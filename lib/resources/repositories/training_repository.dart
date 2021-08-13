import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:musclelog/resources/models/training_row.dart';

class TrainingRepository {
  // for singleton
  static final TrainingRepository _instance = TrainingRepository._internal();
  factory TrainingRepository() => _instance;
  TrainingRepository._internal() {
  }

  //trainingsコレクションからドキュメント一覧をTrainingRowのリストとして取得
  Future<List<TrainingRow>> list() async {
    print('リストだよ');
    QuerySnapshot snapshot = await FirebaseFirestore.instance.collection("trainings").get();
    return snapshot.docs
        .map(
            (QueryDocumentSnapshot e) {
              return TrainingRow(trainingId:e.id,  name: e["name"]);
            }
        )
        .toList();
  }

  Future<void> insert({
    @required String name,
  }) async {
    DocumentReference documentReferencer = FirebaseFirestore.instance.collection('trainings').doc();

    Map<String, dynamic> data = <String, dynamic>{
      "name": name,
    };

    await documentReferencer
        .set(data)
        .whenComplete(() => print("Notes item added to the database"))
        .catchError((e) => print(e));
  }

//todo ⓪削除したいトレーニングのトレーニングIDを引数として受け取り、そのIDに対応するトレーニングドキュメントをFirestoreから削除するメソッドを追加
  Future<void> deleteData({
    @required String documentId,
  }) async{
    return await FirebaseFirestore.instance.collection('trainings').doc(documentId).delete();   //変数に代入した方が良い？
  }



}


