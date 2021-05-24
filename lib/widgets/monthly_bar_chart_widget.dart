import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class MonthlyYBarChartWidget extends StatefulWidget {
  @override
  _ErningBarChartWidgetState createState() => _ErningBarChartWidgetState();
}

class _ErningBarChartWidgetState extends State<MonthlyYBarChartWidget> {
  static var chartdisplay;

  @override
  void initState() {
    super.initState();
    setState(() {
      var data = [
        Addcharts("JA", 10),
        Addcharts("F", 12),
        Addcharts("MAR", 30),
        Addcharts("A", 5),
        Addcharts("MAY", 44),
        Addcharts("JUN", 60),
        Addcharts("JUL", 46),
        Addcharts("AU", 0),
        Addcharts("S", 23),
        Addcharts("O", 99),
        Addcharts("N", 34),
        Addcharts("D", 78),
      ];
      var series = [
        charts.Series(
          domainFn: (Addcharts addcharts, _) => addcharts.lable,
          measureFn: (Addcharts addcharts, _) => addcharts.value,
          id: "addcharts",
          data: data,
        ),
      ];
      chartdisplay = charts.BarChart(
        series,
        animationDuration: Duration(milliseconds: 800),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Container(
        height: 200,
        child: chartdisplay,
      )),
    );
  }
}

class Addcharts {
  final String lable;
  final int value;

  Addcharts(
    this.lable,
    this.value,
  );
}
