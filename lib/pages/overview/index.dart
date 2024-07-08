import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:mittens/components/notification.dart';
import 'package:mittens/constant.dart';
import 'package:mittens/components/header.dart';
import 'package:mittens/service/grpc_service.dart';
import 'package:mittens/service/session_service.dart';

class OverviewPage extends StatefulWidget {
  const OverviewPage({super.key});

  @override
  State<OverviewPage> createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  
  String _header = 'OVERVIEW';
  bool _isLoading = true;

  void fetch () {
    setState(() {
      _isLoading = true;
    });
    Future(() async {
      final (_, token!) = await SessionService().get();
      // final process = await GrpcService().setToken(token).overview();
      // if (!process.status) {
      //   NotificationContent(context).setText(process.message).show();
      //   return;
      // }
      // DateFormat('MMMM').format(DateTime(0, month))

      // final resp= process.data as tag.GetResponse;
      // dataResponse =  resp.data;
      // setState(() {
      //   _data = TagsDataSource(dataResponse, widget._setTagState);
      //   _isLoading = false;
      // });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Title(
      color: Colors.white,
      title: Constants().titleFormat(_header.toLowerCase()),
      child: Column(
        children: [
          // #Header Content
          HeaderContent(_header),
      
          // #Body
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      flex: 3,
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.amber.shade100,
                        height: 100,
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.pinkAccent,
                        height: 350,
                      ),
                    ),
                  ],
                ),
                Flexible(
                  child: Container(
                    color: Colors.blueAccent,
                    height: double.infinity,
                    // child: Flexible(flex: 1, child: Container(),),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}