import 'package:flutter/material.dart';
import 'package:musclelog/blocs/main_blocs.dart';
import 'package:musclelog/widgets/components/main/main_template.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<MainBloc>(
      create: (context) => MainBloc(),
      child: MainTemplate(),
      dispose: (context, value) => value.dispose(),
    );
  }
}