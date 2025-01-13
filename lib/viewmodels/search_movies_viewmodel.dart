import 'package:cinetopia/app/models/movie.dart';
import 'package:cinetopia/app/service/search_movies_service.dart';

class SearchMoviesViewmodel {
  List<Movie> _moviesList = <Movie>[];

  Future<List<Movie>> getPopularMovies() async {
    final SearchMoviesService services = SearchPopularMoviesService();
    _moviesList = await services.getMovies();
    return _moviesList;
  }

  Future<List<Movie>> getMovie(String query) async {
    if (query.isEmpty) {
      _moviesList = await getPopularMovies();
    } else {
      final SearchMoviesService service = SearchForMovie(query: query);
      _moviesList = await service.getMovies();
    }
    return _moviesList;
  }

  List<Movie> get moviesList => _moviesList;
}
