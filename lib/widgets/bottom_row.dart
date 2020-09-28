import 'package:flutter/material.dart';

class BottomRow extends StatelessWidget {
  const BottomRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Container(
            height: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.white10,
            ),
            child: IconButton(
              color: Colors.grey,
              icon: Icon(Icons.bookmark_border),
              onPressed: () {},
            ),
          ),
          SizedBox(width: 8.0),
          Expanded(
            child: Container(
              height: 50.0,
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Center(
                child: Text('Start Reading'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
