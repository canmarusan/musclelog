import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart';
import 'package:musclelog/widgets/components/weight_detail/date_picker.dart';

class WeightDetailInputArea extends StatelessWidget {
  //DateTime _date = new DateTime.now();
  List<List<String>> data = [["7/9","60kg","20%"],["7/10","62kg","22%"],["7/9","60kg","20%"]];
  List<DataRow> buildData(List<List<String>> data1){
    return data1.map((row) {
      return DataRow(
          cells: [
            DataCell(Text(row[0])),
            DataCell(Text(row[1])),
            DataCell(Text(row[2]))
          ]
      );
    }).toList();
  }


  @override//statelesswidgetの中のbuildを上書き？
  Widget build(BuildContext context) {
    return DataTable(
        columns: [
          DataColumn(label: Text("日付")),
          DataColumn(label: Text("体重")),
          DataColumn(label: Text("体脂肪率")),
        ],
        rows: [
          DataRow(
              cells: [
                DataCell(DatePicker(),),
                DataCell(
                    TextField(
                      enabled: true,
                      // 入力数
                      maxLength: 4,
                      style: TextStyle(color: Colors.black),
                      obscureText: false,
                      maxLines: 1,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        counterText: '',
                        suffixText: "kg",
                      ),

                    )
                ),//体重入力
                DataCell(
                    TextField(
                      enabled: true,
                      // 入力数
                      maxLength: 4,
                      style: TextStyle(color: Colors.black),
                      obscureText: false,
                      maxLines: 1,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        counterText: '',
                        suffixText: "%",
                      ),
                    )
                )//体脂肪率入力
            ]
          ),


          ...buildData(data)
          // DataRow(
          //     cells: [
          //       DataCell(Text(data[0][0])),
          //       DataCell(Text(data[0][1])),
          //       DataCell(Text(data[0][2])),
          //     ]
          // ),
          // DataRow(
          //     cells: [
          //       DataCell(Text(data[1][0])),
          //       DataCell(Text(data[1][1])),
          //       DataCell(Text(data[1][2])),
          //     ]
          // )
        ]
    );
  }
}
