import 'package:flutter/material.dart';
import 'package:musclelog/blocs/weight_detail_blocs.dart';
import 'package:musclelog/widgets/components/weight_detail/weight_detail_template.dart';
import 'package:provider/provider.dart';

class WeightDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<WeightDetailBloc>(
      create: (context) => WeightDetailBloc(),
      child: WeightDetailTemplate(),
      dispose: (context, value) => value.dispose(),
    );
  }
}