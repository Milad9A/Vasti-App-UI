import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vasti/models/models.dart';

class UserGreeting extends StatelessWidget {
  const UserGreeting({
    @required this.greeting,
    @required this.currentUser,
  });

  final String greeting;
  final User currentUser;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '$greeting',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              '${currentUser.name}',
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 7.0,
            vertical: 3.0,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(7.0),
                decoration: BoxDecoration(
                  color: Color(0xFFCE552A),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Icon(
                  FontAwesomeIcons.userTag,
                  size: 20.0,
                ),
              ),
              SizedBox(width: 10.0),
              Text(
                '240 point',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
