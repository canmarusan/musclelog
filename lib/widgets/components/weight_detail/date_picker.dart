import 'package:flutter/material.dart';


class DatePicker extends StatefulWidget {
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {

  // 現在日時
  DateTime _date = new DateTime.now();

  // ボタン押下時のイベント
  void onPressedRaisedButton() async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: new DateTime(2021),
        lastDate: new DateTime.now().add(new Duration(days: 360))
    );

    if (picked != null) {
      // 日時反映
      setState(() => _date = picked);
    }
  }

 @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(0.0),
        child: new ElevatedButton(
            onPressed:(){onPressedRaisedButton();} , child: new Text("${_date.month}/${_date.day}"))
    );
  }
}