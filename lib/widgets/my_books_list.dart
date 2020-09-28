import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vasti/models/models.dart';
import 'package:vasti/screens/screens.dart';

class MyBooksList extends StatelessWidget {
  const MyBooksList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              'My Books',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'See more',
              style: TextStyle(
                fontSize: 11.0,
                color: Colors.grey,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
        SizedBox(height: 15.0),
        Container(
          height: MediaQuery.of(context).size.height * 0.35,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: books.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BookScreen(
                                    book: books[index],
                                  ),
                                ),
                              );
                            },
                            child: Image(
                              image: AssetImage(
                                books[index].imageURL,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Row(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.clock,
                                size: 14.0,
                                color: Colors.white38,
                              ),
                              SizedBox(width: 3.0),
                              Text(
                                '${Duration(hours: books[index].timeSpentReadingInHours).inDays}d ${books[index].timeSpentReadingInHours % 24}h',
                                style: TextStyle(
                                  color: Colors.white38,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 12.0),
                          Row(
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.book,
                                size: 14.0,
                                color: Colors.white38,
                              ),
                              SizedBox(width: 3.0),
                              Text(
                                '${books[index].percentageOfCompletion.toString()}%',
                                style: TextStyle(
                                  color: Colors.white38,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
