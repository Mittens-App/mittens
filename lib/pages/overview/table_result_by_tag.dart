import 'package:flutter/material.dart';
import 'package:mittens/components/notification.dart';
import 'package:mittens/service/grpc_service.dart';
import "package:mittens/protofiles/tag.pbgrpc.dart" as tag;
import 'package:mittens/service/session_service.dart';

class ResultByTagTable extends StatefulWidget {
  // Function _setTagState;

  ResultByTagTable({super.key});

  @override
  State<ResultByTagTable> createState() => _ResultByTagTableState();
}

class _ResultByTagTableState extends State<ResultByTagTable> {
  List<tag.DataResponse> dataResponse = [];

  late DataTableSource _data =
      ResultDataSource(dataResponse);

  TextEditingController searchController = TextEditingController();

  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    search();
  }

  void search() {
    setState(() {
      _isLoading = true;
    });
    Future(() async {
      final (_, token!) = await SessionService().get();
      final process =
          await GrpcService().setToken(token).getTags(searchController.text);
      if (!process.status) {
        NotificationContent(context).setText(process.message).show();
        return;
      }

      final resp = process.data as tag.GetResponse;
      dataResponse = resp.data;
      setState(() {
        _data = ResultDataSource(dataResponse);
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      // width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width > 640
          ? (MediaQuery.of(context).size.height - 80)
          : MediaQuery.of(context).size.height - 150,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          alignment: Alignment.topCenter,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              _isLoading
                  ? LinearProgressIndicator(
                      backgroundColor: Colors.transparent,
                      color: Theme.of(context).colorScheme.primary,
                      minHeight: 3,
                    )
                  : const SizedBox(),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              //     // #SEARCH KEYWORD
              //     Container(
              //       alignment: Alignment.topRight,
              //       child: SizedBox(
              //         width: 120,
              //         height: 32,
              //         child: TextField(
              //           style: const TextStyle(
              //             fontSize: 14,
              //           ),
              //           decoration: InputDecoration(
              //             contentPadding:
              //                 const EdgeInsets.only(bottom: 12, left: 5),
              //             enabledBorder: OutlineInputBorder(
              //               borderSide: BorderSide(
              //                   color: Theme.of(context).colorScheme.secondary,
              //                   width: 0.0),
              //             ),
              //             focusedBorder: OutlineInputBorder(
              //               borderSide: BorderSide(
              //                   color: Theme.of(context).colorScheme.secondary,
              //                   width: 0.0),
              //             ),
              //             border: OutlineInputBorder(
              //               borderSide: BorderSide(
              //                   color: Theme.of(context).colorScheme.secondary,
              //                   width: 0.0),
              //             ),
              //           ),
              //           controller: searchController,
              //           onSubmitted: (value) => search,
              //         ),
              //       ),
              //     ),

              //     const SizedBox(
              //       width: 10,
              //     ),

              //     // #SEARCH BUTTON
              //     ElevatedButton(
              //         style: ElevatedButton.styleFrom(
              //           shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(3)),
              //           backgroundColor:
              //               Theme.of(context).colorScheme.secondary,
              //         ),
              //         onPressed: search,
              //         child: Icon(
              //           Icons.search,
              //           color: Theme.of(context).colorScheme.primary,
              //         )),

              //     const SizedBox(
              //       width: 20,
              //     ),
              //   ],
              // ),
              SizedBox(
                width: MediaQuery.of(context).size.width > 640
                    ? 1200
                    : MediaQuery.of(context).size.width - 10,
                child: dataResponse.isEmpty
                    ? null
                    : PaginatedDataTable(
                        source: _data,
                        columns: const [
                          DataColumn(label: Text('Tag Name')),
                          DataColumn(label: Text('TestCase Count')),
                          DataColumn(label: Text('Effectiveness'))
                        ],
                        headingRowColor: MaterialStateColor.resolveWith(
                            (states) => const Color.fromRGBO(16, 51, 71, 1)),
                        columnSpacing: 10,
                        horizontalMargin: 10,
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
class ResultDataSource extends DataTableSource {
  List<tag.DataResponse> dataResponse;
  // Function _setTagSource;

  ResultDataSource(this.dataResponse);

  @override
  DataRow? getRow(int index) {
    return DataRow(cells: [
      // #TAG NAME
      DataCell(ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 150, minWidth: 50),
          child: Text(dataResponse[index].name,
              overflow: TextOverflow.ellipsis, maxLines: 2))),

      // #TESTCASE COUNT
      DataCell(ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800, minWidth: 50),
          child: Text(dataResponse[index].id.toString(),
              overflow: TextOverflow.ellipsis, maxLines: 2))),

      // #EFFECTIVENESS
      DataCell(ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800, minWidth: 50),
          child: Text('${dataResponse[index].id*dataResponse[index].id*1500/100}%',
              overflow: TextOverflow.ellipsis, maxLines: 2))),

      // DataCell(
      //   Row(
      //     children: [
      //       IconButton(
      //           onPressed: () {
      //             _setTagSource(
      //                 dataResponse[index].id,
      //                 dataResponse[index].name,
      //                 dataResponse[index].desc,
      //                 Color(int.parse(dataResponse[index].color, radix: 16)));
      //           },
      //           icon: const Icon(Icons.edit_outlined)),
      //     ],
      //   ),
      //   // placeholder: false,
      // )
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => dataResponse.length;

  @override
  int get selectedRowCount => 0;
}
