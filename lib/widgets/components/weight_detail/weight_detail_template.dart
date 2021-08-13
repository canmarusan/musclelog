import 'package:flutter/material.dart';
import 'package:musclelog/widgets/components/weight_detail/weight_detail_area.dart';
import 'package:musclelog/widgets/components/weight_detail/weight_detail_input_area.dart';

class WeightDetailTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("体重詳細", style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Color(0xfffb5f00),
      ),
      body: Container(
          child: Column(children: [
             WeightDetailArea(),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
             TextButton(onPressed: () {}, child: Text("開始日")),
             TextButton(onPressed: () {}, child: Text("スパン")),
             TextButton(onPressed: () {}, child: Text("終了日"))
        ]),
              WeightDetailInputArea(),
      ])),
    );
  }
}
