class AppConstants {
  static const String baseUrl = " https://api.themoviedb.org/3";
  static const String appName = "fadd2c885bcc4d252f695a6ffe2c1a65";

  static const String nowPlayingMovies =
      "$baseUrl/movie/now_playing?api_key=$appName";
  static const String popularMovies = "$baseUrl/movie/popular?api_key=$appName";
  static const String topRatedMovies =
      "$baseUrl/movie/top_rated?api_key=$appName";

  static String movieDetails(int movieId) =>
      "$baseUrl/movie/$movieId?api_key=$appName";

  static String movieRecommendations(int movieId) =>
      "$baseUrl/movie/$movieId/recommendations?api_key=$appName";

  static const String baseImageUrl = "https://image.tmdb.org/t/p/w500";

  static String imageUrl(String path) => "$baseImageUrl$path";
}
