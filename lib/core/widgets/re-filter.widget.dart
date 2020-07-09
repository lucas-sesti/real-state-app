import 'package:flutter/material.dart';

class ReFilter extends StatelessWidget {
  ReFilter({@required this.filters});

  final List<Widget> filters;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return ListView(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      children: filters,
    );
  }
}

class ReFilterCard extends StatelessWidget {
  const ReFilterCard({
    Key key,
    @required this.text,
    @required this.theme,
  }) : super(key: key);

  final ThemeData theme;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        color: theme.cardTheme.color,
        borderRadius: BorderRadius.circular(
          100,
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Poppins',
          color: theme.primaryColor,
          fontSize: 16,
        ),
      ),
    );
  }
}
