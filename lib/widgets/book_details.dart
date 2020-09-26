import 'package:flutter/material.dart';
import 'package:vasti/models/models.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({
    Key key,
    @required this.book,
  }) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 1.2,
      child: Stack(
        children: <Widget>[
          Image(
            fit: BoxFit.cover,
            width: double.infinity,
            image: AssetImage(
              'assets/background_images/bookBackgroundImage.jpg',
            ),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Text(
                      'Book Details',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.more_horiz),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          offset: Offset(5.0, 5.0),
                        ),
                      ],
                    ),
                    child: Hero(
                      tag: book.imageURL,
                      child: Image(
                        image: AssetImage(book.imageURL),
                        width: MediaQuery.of(context).size.width * 0.35,
                      ),
                    ),
                  ),
                  SizedBox(height: 18.0),
                  Text(
                    book.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    book.author,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Container(
                margin: EdgeInsets.all(12.0),
                padding: EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 15.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Theme.of(context).primaryColor.withOpacity(0.25),
                ),
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            book.rating.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0,
                            ),
                          ),
                          SizedBox(height: 6.0),
                          Text(
                            'Rating',
                            style: TextStyle(
                              fontSize: 11.0,
                              color: Colors.white60,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      VerticalDivider(thickness: 1.0),
                      Column(
                        children: <Widget>[
                          Text(
                            book.numberOfPages.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 6.0),
                          Text(
                            'Number of\nPages',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11.0,
                              color: Colors.white60,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      VerticalDivider(thickness: 1.0),
                      Column(
                        children: <Widget>[
                          Text(
                            book.language,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 6.0),
                          Text(
                            'Language',
                            style: TextStyle(
                              fontSize: 11.0,
                              color: Colors.white60,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
