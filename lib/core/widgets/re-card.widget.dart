import 'package:flutter/material.dart';

class ReCard extends StatefulWidget {
  ReCard({
    this.imageSrc,
  });

  final String imageSrc;

  @override
  _ReCardState createState() => _ReCardState();
}

class _ReCardState extends State<ReCard> {
  bool favorited = false;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.only(
        bottom: 32,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              bottom: 24,
            ),
            child: Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    widget.imageSrc,
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 16,
                  right: 24,
                  child: GestureDetector(
                    onTap: () => setState(() => favorited = !favorited),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        favorited ? Icons.favorite : Icons.favorite_border,
                        color: theme.primaryColor,
                        size: 28,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: 8,
            ),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    right: 14,
                  ),
                  child: Text(
                    '\$200.000',
                    style: theme.textTheme.headline6.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Jenison, MI 49428, SF',
                  style: theme.textTheme.subtitle1.copyWith(
                    color: Color(0xFF7d859b),
                  ),
                ),
              ],
            ),
          ),
          Text(
            '4 bedrooms / 2 bathrooms / 1.416 ft²',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14,
              color: theme.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
