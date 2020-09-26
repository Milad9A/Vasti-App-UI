import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vasti/models/models.dart';
import 'package:vasti/screens/book_screen.dart';

class BookSectionsList extends StatelessWidget {
  const BookSectionsList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Best Seller',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -0.8,
              ),
            ),
            Text(
              'The Latest',
              style: TextStyle(
                color: Colors.white24,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -0.8,
              ),
            ),
            Text(
              'Comming Soon',
              style: TextStyle(
                color: Colors.white24,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -0.8,
              ),
            ),
          ],
        ),
        SizedBox(height: 10.0),
        Container(
          height: 250,
          child: ListView.builder(
            itemCount: books.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    GestureDetector(
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
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Hero(
                            tag: books[index].imageURL,
                            child: Image(
                              width: 85.0,
                              image: AssetImage(
                                books[index].imageURL,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '${books[index].title}',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '${books[index].author}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white38,
                              ),
                            ),
                            SizedBox(height: 15.0),
                            Row(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Icon(
                                      Icons.library_books,
                                      color: Colors.white38,
                                    ),
                                    SizedBox(width: 5.0),
                                    Text(
                                      '${books[index].numberOfPages}p',
                                      style: TextStyle(
                                        color: Colors.white38,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 12.0),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Icon(
                                      FontAwesomeIcons.boxes,
                                      size: 20.0,
                                      color: Colors.white38,
                                    ),
                                    SizedBox(width: 5.0),
                                    Text(
                                      '12,4b',
                                      style: TextStyle(
                                        color: Colors.white38,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Container(
                              height: 35.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFF22263D),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      padding: EdgeInsets.all(10.0),
                                      child: Text(
                                        'Drama',
                                        style: TextStyle(
                                          color: Color(0xFF494FD2),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 5.0),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFF332833),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      padding: EdgeInsets.all(10.0),
                                      child: Text(
                                        'Romance',
                                        style: TextStyle(
                                          color: Color(0xFFE15E6C),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 5.0),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFF223432),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      padding: EdgeInsets.all(10.0),
                                      child: Text(
                                        'Adventure',
                                        style: TextStyle(
                                          color: Color(0xFF4BD86A),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.bookmark_border,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
