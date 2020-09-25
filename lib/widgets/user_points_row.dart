import 'package:flutter/material.dart';

class UserPointsRow extends StatelessWidget {
  const UserPointsRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 17.0, horizontal: 2.0),
      decoration: BoxDecoration(
        color: Color(0xFF292D36),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(Icons.grid_on),
                SizedBox(width: 2.0),
                Text('Claim'),
              ],
            ),
            VerticalDivider(),
            Row(
              children: <Widget>[
                Icon(Icons.control_point),
                SizedBox(width: 2.0),
                Text('Get Point'),
              ],
            ),
            VerticalDivider(),
            Row(
              children: <Widget>[
                Icon(Icons.credit_card),
                SizedBox(width: 2.0),
                Text('My Card'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
