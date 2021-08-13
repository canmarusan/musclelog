import 'package:flutter/material.dart';
import 'package:musclelog/widgets/components/main/training_graph.dart';

class SettingTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("設定", style: TextStyle(fontWeight: FontWeight.bold)),
            backgroundColor: Color(0xfffb5f00),
            ),
        body: Container(
            padding: EdgeInsets.all(15),
            child: SizedBox(
                child: Column(
                    children: [
                      Card(
                        child:Container(
                            child:Row(
                              children: [
                                Text('名前'),
                                Flexible(child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: TextField(),
                                ))
                              ],
                            ),
                          padding: EdgeInsets.all(15),
                          width:double.infinity,
                        )
                      ),
                      Card(
                          child:Container(
                            child:Row(
                              children: [
                                Text('性別'),
                                Flexible(child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: TextField(),
                                ))
                              ],
                            ),
                            padding: EdgeInsets.all(15),
                            width:double.infinity,
                          )
                      ),
                      Card(
                          child:Container(
                            child:Row(
                              children: [
                                Text('身長'),
                                Flexible(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          counterText: '',
                                          suffixText: "cm",
                                        ),
                                      ),
                                    )
                                )
                              ],
                            ),
                            padding: EdgeInsets.all(15),
                            width:double.infinity,
                          )
                      ),
                    ]
                ),
                width: double.infinity
            )
        ),
    );
  }
}
