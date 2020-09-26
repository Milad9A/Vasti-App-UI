import 'package:flutter/material.dart';
import 'package:vasti/models/models.dart';
import 'package:vasti/widgets/widgets.dart';

class BookScreen extends StatelessWidget {
  final Book book;

  const BookScreen({
    @required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Column(
          children: <Widget>[
            Expanded(
              child: BookDetails(book: book),
            ),
          ],
        ),
      ),
    );
  }
}
