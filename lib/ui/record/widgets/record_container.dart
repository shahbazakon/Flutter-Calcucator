import 'package:flutter/material.dart';
import 'package:calculator/models/record.dart';
import 'package:calculator/providers/animate.dart';
import 'package:calculator/providers/calculate.dart';
import 'package:calculator/utils/utilities.dart';
import 'package:provider/provider.dart';

import 'record_text.dart';

class RecordContainer extends StatelessWidget {
  final Record record;

  RecordContainer({this.record});

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Container(
      height: 120,
      width: double.infinity,
      padding: EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Row(
            children: <Widget>[
              // Text(
              //   // getFormattedDate(date: record.date),
              //   style: TextStyle(color: _theme.accentColor),
              // ),
            ],
          ),
          SizedBox(height: 8.0),
          Expanded(
            child: InkWell(
              onTap: () => _onTap(context),
              child: RecordText(record: record),
            ),
          ),
        ],
      ),
    );
  }

  void _onTap(BuildContext context) {
    Navigator.pop(context);
    context.read<Animate>().start();
    context.read<Calculate>().updateDisplayValues(
      result: record.result,
      expression: record.expression,
      date: record.date,
    );
  }
}