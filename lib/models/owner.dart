import 'package:dart_json/dart_json.dart';

class Owner {
  @JsonProperty("avatar_url")
  String avatarUrl;

  @JsonProperty("url")
  String githubUrl;
}
