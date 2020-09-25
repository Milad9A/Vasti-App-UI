import 'package:flutter/material.dart';
import 'package:vasti/widgets/widgets.dart';

class HomeScreenBooks extends StatelessWidget {
  const HomeScreenBooks({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.7,
        child: ListView(
          children: <Widget>[
            MyBooksList(),
            SizedBox(height: 25.0),
            BookSectionsList(),
          ],
        ),
      ),
    );
  }
}
