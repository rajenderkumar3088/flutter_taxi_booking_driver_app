import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class ErningBarChartWidget extends StatefulWidget {
  @override
  _ErningBarChartWidgetState createState() => _ErningBarChartWidgetState();
}

class _ErningBarChartWidgetState extends State<ErningBarChartWidget> {
  static var chartdisplay;

  @override
  void initState() {
    super.initState();
    setState(() {
      var data = [
        Addcharts("M", 10),
        Addcharts("TU", 12),
        Addcharts("W", 30),
        Addcharts("TH", 5),
        Addcharts("F", 66),
        Addcharts("SA", 60),
        Addcharts("SU", 100),
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

  Addcharts(this.lable, this.value);
}
