import 'package:flutter/material.dart';
import 'package:real_estate_app/core/widgets/re-card.widget.dart';
import 'package:real_estate_app/core/widgets/re-filter.widget.dart';
import 'package:real_estate_app/core/widgets/re-header-home.widget.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: Padding(
        padding: EdgeInsets.only(
          top: 24,
          left: 24,
          right: 24,
        ),
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                bottom: 24,
              ),
              child: ReHeaderHome(),
            ),
            Text(
              'City',
              style: theme.textTheme.subtitle1,
            ),
            Text(
              'San Francisco',
              style: theme.textTheme.headline4.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              color: theme.dividerColor,
              width: double.infinity,
              margin: EdgeInsets.only(
                bottom: 24,
              ),
              height: 1,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: SizedBox(
                height: 40,
                child: ReFilter(
                  filters: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        right: 16,
                      ),
                      child: ReFilterCard(
                        theme: theme,
                        text: '< \$220.000',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 16,
                      ),
                      child: ReFilterCard(
                        theme: theme,
                        text: 'For sale',
                      ),
                    ),
                    ReFilterCard(
                      theme: theme,
                      text: '3-4 beds',
                    ),
                  ],
                ),
              ),
            ),
            ReCard(
              imageSrc:
                  'https://www.aedirect.com/blog/wp-content/uploads/2019/12/pexels-photo-1396122.jpeg',
            ),
            ReCard(
              imageSrc:
                  'https://www.utahrealestate.com/site/img/common/marquee-08.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
