import 'models.dart';

class MyBook extends Book {
  final int timeSpentReadingInHours;
  final int percentageOfCompletion;

  MyBook({
    id,
    title,
    imageURL,
    rating,
    numberOfPages,
    language,
    description,
    author,
    this.timeSpentReadingInHours,
    this.percentageOfCompletion,
  }) : super(
          id: id,
          title: title,
          imageURL: imageURL,
          rating: rating,
          numberOfPages: numberOfPages,
          language: language,
          description: description,
          author: author,
        );
}
