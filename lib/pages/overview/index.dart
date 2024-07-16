import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mittens/components/notification.dart';
import 'package:mittens/constant.dart';
import 'package:mittens/components/header.dart';
import 'package:mittens/pages/overview/card_info.dart';
import 'package:mittens/pages/overview/table_result_by_date.dart';
import 'package:mittens/pages/overview/table_result_by_tag.dart';
import 'package:mittens/service/grpc_service.dart';
import 'package:mittens/service/session_service.dart';
import 'package:pie_chart/pie_chart.dart';
import "package:mittens/protofiles/report.pbgrpc.dart" as report;

class OverviewPage extends StatefulWidget {
  const OverviewPage({super.key});

  @override
  State<OverviewPage> createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  String _header = 'OVERVIEW ';
  String _totalTestCase = "0";
  String _totalTags = "0";
  bool _isLoading = true;
  int touchedIndex = -1;

  final dataMap = <String, double>{
    "Flutter": 67,
    "React": 13,
    // "Xamarin": 2,
    // "Ionic": 2,
  };
  final colorList = <Color>[
    const Color(0xfffdcb6e),
    const Color(0xff0984e3),
    const Color(0xfffd79a8),
    const Color(0xffe17055),
    const Color(0xff6c5ce7),
  ];

  final gradientList = <List<Color>>[
    [
      const Color.fromRGBO(223, 250, 92, 1),
      const Color.fromRGBO(129, 250, 112, 1),
    ],
    [
      const Color.fromRGBO(129, 182, 205, 1),
      const Color.fromRGBO(91, 253, 199, 1),
    ],
    [
      const Color.fromRGBO(175, 63, 62, 1.0),
      const Color.fromRGBO(254, 154, 92, 1),
    ],
    [
      const Color(0xff6c5ce7),
      const  Color(0xfffd79a8),
    ]
  ];

  @override
  void initState() {
    super.initState();
    fetch();
  }

  void fetch() {
    setState(() {
      _isLoading = true;
    });
    Future(() async {
      final (_, token!) = await SessionService().get();
      final process = await GrpcService().setToken(token).overview();
      if (!process.status) {
        NotificationContent(context).setText(process.message).show();
        return;
      }
      // DateFormat('MMMM').format(DateTime(0, month))

      final resp= process.data as report.ReportResponse;
      print(resp);

      // response conteknya di mittens/protofiles/report.proto/ReportResponse{}
      print(resp.resultData);
      print(resp.tagData);
      print(resp.totalTestcases);
      print(resp.currentMonthString);
      setState(() {
        _header += ("${resp.currentMonthString.toUpperCase()} ${resp.currentYear}");
        _totalTestCase = resp.totalTestcases.toString();
        _totalTags = resp.totalTags.toString();
      });
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
            child: Container(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            alignment: Alignment.center,
                            // color: Colors.amber.shade100,
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: card_info(
                                          title: 'Total Active TestCase',
                                          value: _totalTestCase,
                                          border_color: Colors.amber,
                                        ),
                                      ),
                                      SizedBox(width: 30),
                                      Expanded(
                                        child: card_info(
                                          title: 'Total Active Tags',
                                          value: _totalTags,
                                          border_color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Expanded(flex: 3, child: ResultByTagTable())
                              ],
                            ),
                            // height: 350,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                              alignment: Alignment.center,
                              // color: Colors.pinkAccent,
                              child: PieChart(
                                dataMap: dataMap,
                                colorList: colorList,
                                chartRadius:
                                    MediaQuery.of(context).size.width / 2,
                                centerText: "Effectiveness",
                                centerTextStyle: TextStyle(
                                  fontSize: 40
                                ),
                                chartType: ChartType.ring,
                                ringStrokeWidth: 50,
                                animationDuration: Duration(seconds: 3),
                                chartValuesOptions: ChartValuesOptions(
                                    showChartValues: true,
                                    showChartValuesOutside: false,
                                    showChartValuesInPercentage: true,
                                    showChartValueBackground: true),
                                legendOptions: LegendOptions(
                                    showLegends: true,
                                    legendShape: BoxShape.circle,
                                    legendTextStyle: TextStyle(fontSize: 20),
                                    legendPosition: LegendPosition.bottom,
                                    showLegendsInRow: true),
                                gradientList: gradientList,                                
                              )
                              // height: 350,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      //color: Colors.blueAccent,
                      height: double.infinity,
                      child: ResultByDateTable(),
                      // child: Flexible(flex: 1, child: Container(),),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // List<PieChartSectionData> showingSections() {
  //   return List.generate(4, (i) {
  //     final isTouched = i == touchedIndex;
  //     final fontSize = isTouched ? 25.0 : 16.0;
  //     final radius = isTouched ? 60.0 : 50.0;
  //     const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
  //     switch (i) {
  //       case 0:
  //         return PieChartSectionData(
  //           color: Colors.blue,
  //           value: 40,
  //           title: '40%',
  //           radius: radius,
  //           titleStyle: TextStyle(
  //             fontSize: fontSize,
  //             fontWeight: FontWeight.bold,
  //             color: Theme.of(context).colorScheme.background,
  //             shadows: shadows,
  //           ),
  //         );
  //       case 1:
  //         return PieChartSectionData(
  //           color: Colors.amber,
  //           value: 30,
  //           title: '30%',
  //           radius: radius,
  //           titleStyle: TextStyle(
  //             fontSize: fontSize,
  //             fontWeight: FontWeight.bold,
  //             color: Theme.of(context).colorScheme.background,
  //             shadows: shadows,
  //           ),
  //         );
  //       case 2:
  //         return PieChartSectionData(
  //           color: Colors.purple,
  //           value: 15,
  //           title: '15%',
  //           radius: radius,
  //           titleStyle: TextStyle(
  //             fontSize: fontSize,
  //             fontWeight: FontWeight.bold,
  //             color: Theme.of(context).colorScheme.background,
  //             shadows: shadows,
  //           ),
  //         );
  //       case 3:
  //         return PieChartSectionData(
  //           color: Colors.green,
  //           value: 15,
  //           title: '15%',
  //           radius: radius,
  //           titleStyle: TextStyle(
  //             fontSize: fontSize,
  //             fontWeight: FontWeight.bold,
  //             color: Theme.of(context).colorScheme.background,
  //             shadows: shadows,
  //           ),
  //         );
  //       default:
  //         throw Error();
  //     }
  //   });
  // }
}
