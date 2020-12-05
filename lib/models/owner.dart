import 'package:dart_json_mapper/dart_json_mapper.dart'
    show JsonMapper, jsonSerializable, JsonProperty;

@jsonSerializable
class Owner {
  @JsonProperty(name: "avatar_url")
  String avatarUrl;

  @JsonProperty(name: "url")
  String githubUrl;
}
