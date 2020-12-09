import 'package:flutter/foundation.dart';
import 'package:github_stars/mapper/home_mapper.dart';
import 'package:github_stars/models/vo/github_page_vo.dart';
import 'package:http/http.dart' as http;
import 'package:dart_json_mapper/dart_json_mapper.dart' show JsonMapper;
import '../providers/api_definitions.dart';
import '../models/github_page.dart';

class StarsProvider with ChangeNotifier {
  Future<GithubPageVo> get pageResponse {
    return http.get(ApiDefinitions.URL).then(
      (response) {
        return JsonMapper.deserialize<GithubPage>(response.body);
      },
    ).then((value) {
      notifyListeners();
      return githubToVo(value);
    });
  }
}
