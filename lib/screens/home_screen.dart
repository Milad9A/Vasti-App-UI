import 'package:flutter/material.dart';
import 'package:vasti/models/models.dart';

class HomeScreen extends StatefulWidget {
  final User currentUser;

  const HomeScreen({
    Key key,
    @required this.currentUser,
  }) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(widget.currentUser.name),
    );
  }
}
