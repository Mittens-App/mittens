import 'package:flutter/material.dart';
import 'package:mittens/components/notification.dart';
import 'package:mittens/service/grpc_service.dart';
import "package:mittens/protofiles/tag.pbgrpc.dart" as tag;
import 'package:mittens/service/session_service.dart';

class TagTable extends StatefulWidget {
  const TagTable({super.key});

  @override
  State<TagTable> createState() => _TagTableState();
}

class _TagTableState extends State<TagTable> {
  
  List<tag.DataResponse> dataResponse = [];
  late DataTableSource _data = TagsDataSource(dataResponse);

  @override
  void initState() {
    super.initState();

    Future(() async {
      final (_, token!) = await SessionService().get();
      final process = await GrpcService().setToken(token).getTags(null);
      if (!process.status) {
        NotificationContent(context).setText(process.message).show();
        return;
      }

      final resp= process.data as tag.GetResponse;
      setState(() {
        dataResponse =  resp.data;
      });
    });
      
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      // width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width > 640? (MediaQuery.of(context).size.height - 80) : MediaQuery.of(context).size.height -150,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          alignment: Alignment.topCenter,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                alignment: Alignment.topRight,
                child: Container(
                  width: 150,
                  height: 50,
                  color: Colors.grey,
                  child: TextField(
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width > 640? 1200 : MediaQuery.of(context).size.width -10,
                child: dataResponse.isEmpty? null: PaginatedDataTable(
                  source: _data,
                  
                  columns: const [
                    DataColumn(label: Text('Tag Name')),
                    DataColumn(label: Text('Description')),
                    DataColumn(label: Text('Color')),
                    DataColumn(label: Text('Action'))
                  ],
                  columnSpacing: 10,
                  horizontalMargin:10,
                  rowsPerPage: dataResponse.length,
                  showFirstLastButtons: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// #DATA SOURCE FOR PAGINATED DATA TABLE
class TagsDataSource extends DataTableSource {

  List<tag.DataResponse> dataResponse;

  TagsDataSource(this.dataResponse);
  
  @override
  DataRow? getRow(int index) {
    return DataRow(
      
      cells: [

        // #TAG NAME
        DataCell(
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 150,
              minWidth: 50
            ),
            child: Text(dataResponse[index].name, overflow: TextOverflow.ellipsis, maxLines: 2)
          )
        ),

        // #TAG DESCRIPTION
        DataCell(
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 800,
              minWidth: 50
            ),
            child: Text(dataResponse[index].desc, overflow: TextOverflow.ellipsis, maxLines: 2)
          )
        ),

        // #TAG COLOR
        DataCell(
          Container(
            height: 20,
            width: 65,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color(
                  int.parse(dataResponse[index].color, radix: 16) + 0xFF000000
              )
            ),
          )
        ),

      DataCell(
        Row(
          children: [
            IconButton(
              onPressed: () {
              }, 
              icon: const Icon(Icons.edit_outlined)
            ),
          ],
        ),
        // placeholder: false,
      )
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => dataResponse.length;

  @override
  int get selectedRowCount => 0;
}
