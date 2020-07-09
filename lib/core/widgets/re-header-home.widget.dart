import 'package:flutter/material.dart';

class ReHeaderHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(
              color: theme.dividerColor,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Icon(
            Icons.menu,
            color: theme.primaryColor,
          ),
        ),
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(
              color: theme.dividerColor,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Icon(
            Icons.filter_list,
            color: theme.primaryColor,
          ),
        ),
      ],
    );
  }
}
