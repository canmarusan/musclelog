import 'package:flutter/material.dart';
import 'package:musclelog/resources/repositories/training_repository.dart';
import 'package:musclelog/widgets/components/main/training_area.dart';

import 'package:musclelog/widgets/components/main/weight_area.dart';
import 'package:musclelog/widgets/components/setting/setting_template.dart';

import 'add_training.dart';

class MainTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("メイン", style: TextStyle(fontWeight: FontWeight.bold)),
            backgroundColor: Color(0xfffb5f00),
            actions: [
              IconButton(
                  icon: Icon(
                      Icons.settings_rounded),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) {return SettingTemplate();}
                        )
                    );

                  }
            )]),
        body: Scrollbar(
          child:SingleChildScrollView(
              child:Container(
                width: double.infinity,
                child: Column(children: [WeightArea(),AddTraining(), TrainingArea()]),
              )
          )

        )







        ,
      );

  }
}

