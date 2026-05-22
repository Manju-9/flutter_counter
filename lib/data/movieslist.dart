final List<Movie> marvelMovies = [
  Movie(
    title: "Iron Man",
    year: "2008",
    image: "assets/images/ironman.jpg",
  ),
  Movie(
    title: "The Avengers",
    year: "2012",
    image: "assets/images/avengers.jpg",
  ),
  Movie(
    title: "Captain America: The Winter Soldier",
    year: "2014",
    image: "assets/images/captionam.jpg",
  ),
  Movie(
    title: "Guardians of the Galaxy",
    year: "2014",
    image: "assets/images/guardiansgalaxy.jpg",
  ),
  Movie(
    title: "Black Panther",
    year: "2018",
    image: "assets/images/blackpanther.jpg",
  ),
  Movie(
    title: "Avengers: Infinity War",
    year: "2018",
    image: "assets/images/infinitywar.jpg",
  ),
  Movie(
    title: "Avengers: Endgame",
    year: "2019",
    image: "assets/images/endgame.jpg",
  ),
];

class Movie {
  final String title;
  final String year;
  final String image;

  Movie({
    required this.title,
    required this.year,
    required this.image,
  });
}