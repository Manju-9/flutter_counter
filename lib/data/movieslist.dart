final List<Movie> marvelMovies = [
  Movie(
    title: "Iron Man",
    year: "2008",
    image: "https://m.media-amazon.com/images/I/81dZ6K6N0XL._AC_SY679_.jpg",
  ),
  Movie(
    title: "The Avengers",
    year: "2012",
    image: "https://m.media-amazon.com/images/I/91lG+M1iYzL._AC_SY679_.jpg",
  ),
  Movie(
    title: "Captain America: The Winter Soldier",
    year: "2014",
    image: "https://m.media-amazon.com/images/I/81hC4J9J7KL._AC_SY679_.jpg",
  ),
  Movie(
    title: "Guardians of the Galaxy",
    year: "2014",
    image: "https://m.media-amazon.com/images/I/81zK7d0Z3wL._AC_SY679_.jpg",
  ),
  Movie(
    title: "Black Panther",
    year: "2018",
    image: "https://m.media-amazon.com/images/I/81rEhhwbubL._AC_SY679_.jpg",
  ),
  Movie(
    title: "Avengers: Infinity War",
    year: "2018",
    image: "https://m.media-amazon.com/images/I/91e9898R7QL._AC_SY679_.jpg",
  ),
  Movie(
    title: "Avengers: Endgame",
    year: "2019",
    image: "https://m.media-amazon.com/images/I/81ExhpBEbHL._AC_SY679_.jpg",
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