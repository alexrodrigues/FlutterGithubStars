import 'package:dart_json/dart_json.dart';

import '../models/owner.dart';

class Star {
  @JsonProperty("id")
  int id;

  @JsonProperty("name")
  String name;

  @JsonProperty("fullname")
  String fullname;

  @JsonProperty("owner")
  Owner owner;
}
