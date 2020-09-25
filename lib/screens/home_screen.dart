import 'package:flutter/material.dart';
import 'package:vasti/models/models.dart';
import 'package:vasti/widgets/widgets.dart';

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
  final greeting = DateTime.now().hour <= 12 ? 'Good Morning' : 'Good Evening';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              UserGreeting(
                greeting: greeting,
                currentUser: currentUser,
              ),
              SizedBox(height: 20.0),
              UserPointsRow(),
              SizedBox(height: 25.0),
              MyBooksList(),
            ],
          ),
        ),
      ),
    );
  }
}
