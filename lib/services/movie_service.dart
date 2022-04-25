import 'package:flicker_app/services/http_service.dart';
import 'package:get_it/get_it.dart';

class MovieService {
  final GetIt getIt = GetIt.instance;

  late HttpService _http;

  MovieService() {
    _http = getIt.get<HttpService>();
  }
}
