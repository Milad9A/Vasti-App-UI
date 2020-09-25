class Book {
  final int id;
  final String title;
  final String imageURL;
  final double rating;
  final int numberOfPages;
  final String language;
  final String description;
  final String author;
  final int timeSpentReadingInHours;
  final int percentageOfCompletion;

  Book({
    this.id,
    this.title,
    this.imageURL,
    this.rating,
    this.numberOfPages,
    this.language,
    this.description,
    this.author,
    this.timeSpentReadingInHours,
    this.percentageOfCompletion,
  });
}

List<Book> books = [
  Book(
    id: 1,
    title: 'The Art of War',
    imageURL: 'assets/covers/The Art of War.png',
    rating: 5,
    numberOfPages: 423,
    language: 'Eng',
    author: 'Zi Sun',
    description:
        'CHUAN, adding that there were two other CHUAN besides. This has brought forth a theory, that the bulk of these 82 chapters consisted of other writings of Sun Tzu -- we should call them apocryphal -- similar to the WEN TA, of which a specimen dealing with the Nine Situations [15] is preserved in the T`UNG TIEN, and another in Ho Shin\'s commentary. It is suggested that before his interview with Ho Lu, Sun Tzu had only written the 13 chapters, but afterwards composed a sort of exegesis in the form of question and answer between himself and the King. Pi I-hsun, the author of the SUN TZU HSU LU, backs this up with a quotation from the WU YUEH CH`UN CH`IU: "The King of Wu summoned Sun Tzu, and asked him questions about the art of war. Each time he set forth a chapter of his work, the King could not find words enough to praise him." As he points out, if the whole work was expounded on the same scale as in the above- mentioned fragments, the total number of chapters could not fail to be considerable',
    percentageOfCompletion: 61,
    timeSpentReadingInHours: 71,
  ),
  Book(
    id: 2,
    title: 'The Adventures of Sherlock Holmes',
    imageURL: 'assets/covers/The Adventures of Sherlock Holmes.png',
    rating: 4,
    numberOfPages: 381,
    language: 'Eng',
    author: 'Arthur Conan Doyle',
    description:
        '"Then, pray consult," said Holmes, shutting his eyes once more. "The facts are briefly these: Some five years ago, during a lengthy visit to Warsaw, I made the acquaintance of the well-known adventuress, Irene Adler. The name is no doubt familiar to you." "Kindly look her up in my index, Doctor," murmured Holmes without opening his eyes. For many years he had adopted a system of docketing all paragraphs concerning men and things, so that it was difficult to name a subject or a person on which he could not at once',
    percentageOfCompletion: 50,
    timeSpentReadingInHours: 44,
  ),
  Book(
    id: 3,
    title: 'Pride and Prejudice',
    imageURL: 'assets/covers/Pride and Prejudice.png',
    rating: 3,
    numberOfPages: 296,
    language: 'Eng',
    author: 'Jane Austen',
    description:
        'Bennet," as she entered the room, "we have had a most delightful evening, a most excellent ball. I wish you had been there. Jane was so admired, nothing could be like it. Everybody said how well she looked; and Mr. Bingley thought her quite beautiful, and danced with her twice! Only think of that, my dear; he actually danced with her twice! and she was the only creature in the room that he asked a second time. First of all, he asked Miss Lucas. I was so vexed to see him stand up with her! But, however, he did not admire her at all; indeed, nobody can, you know; and he seemed quite struck with Jane as she was going down the dance. So he inquired who she was, and got introduced, and asked her for the two next. Then the two third he danced with Miss King, and the two fourth with Maria Lucas, and the two fifth with Jane again, and the two sixth with Lizzy, and the Boulanger--" "If he had had any compassion for me," cried her husband impatiently, "he would not have danced half so',
    percentageOfCompletion: 50,
    timeSpentReadingInHours: 44,
  ),
  Book(
    id: 4,
    title: 'The Art of Public Speaking',
    imageURL: 'assets/covers/The Art of Public Speaking.png',
    rating: 4.1,
    numberOfPages: 624,
    language: 'Eng',
    author: 'Dale Carnegie',
    description:
        'Training in public speaking is not a matter of externals--primarily; it is not a matter of imitation--fundamentally; it is not a matter of conformity to standards--at all. Public speaking is public utterance, public issuance, of the man himself; therefore the first thing both in time and in importance is that the man should be and think and feel things that are worthy of being given forth. Unless there be something of value within, no tricks of training can ever make of the talker anything more than a machine--albeit a highly perfected machine--for the delivery of other men\'s goods. So self-development is fundamental in our plan.',
    percentageOfCompletion: 50,
    timeSpentReadingInHours: 44,
  ),
  Book(
    id: 5,
    title: 'A Little Princess',
    imageURL: 'assets/covers/A Little Princess.png',
    rating: 4.6,
    numberOfPages: 578,
    language: 'Eng',
    author: 'Frances Hodgson Burnett',
    description:
        'Sara Crewe, a pupil at Miss Minchin\'s London school, is left in poverty when her father dies, but is later rescued by a mysterious benefactor.',
    percentageOfCompletion: 50,
    timeSpentReadingInHours: 44,
  ),
  Book(
    id: 6,
    title: 'Emma',
    imageURL: 'assets/covers/Emma.png',
    rating: 3.4,
    numberOfPages: 597,
    language: 'Eng',
    author: 'Jane Austen',
    description:
        'The main character, Emma Woodhouse, is described in the opening paragraph as \'\'handsome, clever, and rich\'\' but is also rather spoiled. As a result of the recent marriage of her former governess, Emma prides herself on her ability to matchmake, and proceeds to take under her wing an illegitimate orphan, Harriet Smith, whom she hopes to marry off to the vicar, Mr Elton. So confident is she that she persuades Harriet to reject a proposal from a young farmer who is a much more suitable partner for the girl.',
    percentageOfCompletion: 50,
    timeSpentReadingInHours: 44,
  ),
  Book(
    id: 7,
    title: 'Alice in Wonderland',
    imageURL: 'assets/covers/Alice in Wonderland.png',
    rating: 3.8,
    numberOfPages: 486,
    language: 'Eng',
    author: 'Lewis Carroll',
    description:
        'The story of a girl named Alice who falls down a rabbit hole into a fantasy world populated by peculiar and anthropomorphic creatures. The tale is filled with allusions to Dodgson\'s friends. The tale plays with logic in ways that have given the story lasting popularity with adults as well as children. It is considered to be one of the most characteristic examples of the genre of literary nonsense, and its narrative course and structure have been enormously influential, especially in the fantasy genre.',
    percentageOfCompletion: 50,
    timeSpentReadingInHours: 44,
  ),
  Book(
    id: 8,
    title: 'The Arabian Nights',
    imageURL: 'assets/covers/The Arabian Nights.png',
    rating: 4.5,
    numberOfPages: 718,
    language: 'Eng',
    author: 'Andrew Lang',
    description:
        'A medieval Middle-Eastern literary epic which tells the story of Scheherazade, a Sassanid Queen, who must relate a series of stories to her malevolent husband, the King, to delay her execution. The stories are told over a period of one thousand and one nights, and every night she ends the story with a suspenseful situation, forcing the King to keep her alive for another day. The individual stories were created over many centuries, by many people and in many styles, and they have become famous in their own right.',
    percentageOfCompletion: 50,
    timeSpentReadingInHours: 44,
  ),
];
