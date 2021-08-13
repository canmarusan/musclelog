import 'package:flutter/material.dart';
import 'package:musclelog/widgets/components/training_detail/training_detail_area.dart';

class TrainingDetailTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("体重詳細", style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Color(0xfffb5f00),
      ),
      body: Container(
          child: Column(children: [
            TrainingDetailArea(),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              TextButton(onPressed: () {}, child: Text("開始日")),
              TextButton(onPressed: () {}, child: Text("スパン")),
              TextButton(onPressed: () {}, child: Text("終了日"))
            ]),
            //TrainingDetailInputArea(),
          ])),
    );
  }
}
