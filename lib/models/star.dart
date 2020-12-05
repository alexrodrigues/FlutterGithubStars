import 'package:dart_json_mapper/dart_json_mapper.dart'
    show JsonMapper, jsonSerializable, JsonProperty;
import '../models/owner.dart';

@jsonSerializable
class Star {
  @JsonProperty(name: "id")
  int id;

  @JsonProperty(name: "name")
  String name;

  @JsonProperty(name: "fullname")
  String fullname;

  @JsonProperty(name: "owner")
  Owner owner;
}
