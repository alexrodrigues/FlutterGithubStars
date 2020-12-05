import 'package:dart_json_mapper/dart_json_mapper.dart'
    show JsonMapper, jsonSerializable, JsonProperty;
import '../models/star.dart';

@jsonSerializable
class GithubPage {
  @JsonProperty(name: "total_count")
  int totalCount;

  @JsonProperty(name: "items")
  List<dynamic> items;
}
