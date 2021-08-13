








import 'package:flutter/material.dart';
import 'package:musclelog/blocs/setting_blocs.dart';
import 'package:musclelog/widgets/components/setting/setting_template.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<SettingBloc>(
      create: (context) => SettingBloc(),
      child: SettingTemplate(),
      dispose: (context, value) => value.dispose(),
    );
  }
}