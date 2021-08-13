import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musclelog/blocs/main_blocs.dart';
import 'package:musclelog/resources/models/graph_data.dart';
import 'package:musclelog/resources/models/training_row.dart';
import 'package:musclelog/widgets/screen/training_detail_screen.dart';

class TrainingGraph extends StatelessWidget {
  TrainingRow training;
  TrainingGraph({@required this.training}){
  }
  
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
    MainBloc _mainBloc = MainBloc();  //藤本勝手に記入
    return Container(
        child: Card(
          child:GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTapUp: (_){
            //todo ④MainBloc内の削除メソッドを呼び出す。
              _mainBloc.deleteTraining(training.trainingId);


            },
              // onTap: () {
              //   Navigator.of(context).push(
              //       MaterialPageRoute(
              //           builder: (context) {return TrainingDetailScreen();}
              //       )
              //   );
              // },
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                        padding: EdgeInsets.only(left: 15, top: 15),
                        child: Text(
                          this.training.name, //this. => クラス変数であることを明示してくれる。
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                    ),
                    Container(
                      height: 150,
                      padding: EdgeInsets.all(15),
                      child: charts.LineChart(
                          [
                        charts.Series(
                            id: "Weight",
                            data: data,
                            domainFn: getDomainFn,
                            measureFn: getMeasureFn,
                            colorFn: (d, _) =>
                            charts.MaterialPalette.deepOrange.shadeDefault)
                          ]
                      ),
                    )
                  ]
              )
          ),
        )







        );
  }
}
