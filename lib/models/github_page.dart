import 'package:dart_json/dart_json.dart';
import '../models/star.dart';

class GithubPage {
  @JsonProperty("total_count")
  String totalCount;

  @JsonProperty("items")
  List<Star> items;
}
