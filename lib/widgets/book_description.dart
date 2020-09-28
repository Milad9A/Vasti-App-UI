import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vasti/models/models.dart';

class BookDescription extends StatelessWidget {
  BookDescription({
    Key key,
    @required this.book,
  }) : super(key: key);

  final Book book;
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.0,
      child: Container(
        child: CupertinoScrollbar(
          isAlwaysShown: true,
          controller: _scrollController,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: ListView(
              controller: _scrollController,
              children: <Widget>[
                Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  book.description,
                  style: TextStyle(
                    color: Colors.white60,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
