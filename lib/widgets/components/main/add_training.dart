import 'package:flutter/material.dart';
import 'package:musclelog/blocs/main_blocs.dart';
import 'package:musclelog/resources/repositories/training_repository.dart';
import 'package:provider/provider.dart';

class AddTraining extends StatelessWidget {
  TextEditingController _controller = TextEditingController();
  Widget build(BuildContext context) {
    MainBloc _bloc = Provider.of<MainBloc>(context);
    return Container(
        //padding: EdgeInsets.all(5),
        child: TextButton(onPressed: () {
          showDialog(
            context: context,
            builder: (_) {
              return AlertDialog(
                  title: Text("トレーニング一覧"),
                content: TextField(
                    controller: _controller,
                    enabled: true,
                    // 入力数
                    maxLength: 13,
                    style: TextStyle(color: Colors.black),
                    obscureText: false,
                    maxLines: 1,
                    //keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "トレーニング名入力",
                      counterText: '',

                    )),

                actions: <Widget>[
                  // ボタン領域
                  FlatButton(
                      child: Text("追加"),
                      onPressed: () {
                        _bloc.addTraining(_controller.text);
                        Navigator.pop(context);
                      }
                  ),
                  FlatButton(
                      child: Text("キャンセル"),
                      onPressed: () {
                        Navigator.pop(context);
                      }
                  ),
                ],
              );
            },
          );
        }, child: Text("トレーニング追加"))
    );
  }
}
