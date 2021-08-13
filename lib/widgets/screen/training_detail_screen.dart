
import 'package:flutter/material.dart';
import 'package:musclelog/blocs/training_detail_blocs.dart';
import 'package:musclelog/widgets/components/training_detail/training_detail_template.dart';
import 'package:provider/provider.dart';

class TrainingDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<TrainingDetailBloc>(
      create: (context) => TrainingDetailBloc(),
      child: TrainingDetailTemplate(),
      dispose: (context, value) => value.dispose(),
    );
  }
}
