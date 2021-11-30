import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:calculator/ui/record/records_page.dart';
import 'package:calculator/ui/widgets/custom_icon_button.dart';
import 'package:calculator/utils/utilities.dart';

class CalculatorAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 25.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Calculator', style: appBarStyle(context)),
            CustomIconButton(
              icon: LineAwesomeIcons.history,
              size: 25.0,
              onPressed: () => Navigator.pushNamed(
                context,
                RecordsPage.id,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
