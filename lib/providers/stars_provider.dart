import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:dart_json_mapper/dart_json_mapper.dart' show JsonMapper;
import '../providers/api_definitions.dart';
import '../models/github_page.dart';

class StarsProvider with ChangeNotifier {
  Future<GithubPage> get pageResponse {
    return http.get(ApiDefinitions.URL).then(
      (response) {
        return JsonMapper.deserialize<GithubPage>(response.body);
      },
    ).then((value) {
      notifyListeners();
      return value;
    });
  }
}
