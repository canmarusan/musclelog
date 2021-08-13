import 'package:flutter/material.dart';
import 'package:musclelog/resources/models/graph_data.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class TrainingDetailArea extends StatelessWidget {
  final data = [
    GraphData(1, 100),
    GraphData(2, 200),
    GraphData(3, 500),
  ];

  int getDomainFn(dynamic series, int num) {
    return (series as GraphData).x;
  }

  int getMeasureFn(dynamic series, int num) {
    return (series as GraphData).y;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
        child: SizedBox(
            child:Card(

                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                          padding: EdgeInsets.only(left: 15, top: 15),
                          child: Text(
                            "体重",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                      Container(
                        height: 150,
                        padding: EdgeInsets.all(15),
                        child: charts.LineChart([
                          charts.Series(
                              id: "Weight",
                              data: data,
                              domainFn: getDomainFn,
                              measureFn: getMeasureFn,
                              colorFn: (d, _) =>
                              charts.MaterialPalette.deepOrange.shadeDefault)
                        ]),
                      )
                    ]))
        )



        ,
        width: double.infinity);
  }
}
