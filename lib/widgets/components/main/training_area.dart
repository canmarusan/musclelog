import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musclelog/blocs/main_blocs.dart';
import 'package:musclelog/resources/models/graph_data.dart';
import 'package:musclelog/resources/models/training_row.dart';
import 'package:musclelog/widgets/components/main/training_graph.dart';
import 'package:musclelog/widgets/screen/training_detail_screen.dart';
import 'package:musclelog/widgets/screen/weight_detail_screen.dart';
import 'package:provider/provider.dart';


class TrainingArea extends StatelessWidget {
  List<TrainingRow> trainings =[] ;
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
    MainBloc _bloc = Provider.of<MainBloc>(context);
    _bloc.fetchTrainings();

    return  StreamBuilder(
        stream: _bloc.trainingRowStream,
        builder: (context, snapshot) {
          print('ビルダだよ');
          if (!snapshot.hasData) return Container();

          List<TrainingRow> _trainings = snapshot.data;
          List<TrainingGraph> _graphs = _trainings.map(
              (TrainingRow e){
                return TrainingGraph(training: e);
              }
          ).toList();   //mapの後には.toList()をつけること

          return Container(
                padding: EdgeInsets.all(15),
                child: Column(
                    children: _graphs
                )
          );
        }
    );

  }
}
