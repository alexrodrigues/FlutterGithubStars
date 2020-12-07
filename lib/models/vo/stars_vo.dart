import 'package:github_stars/models/vo/owner_vo.dart';

class StarsVo {
  int id;
  String name;
  String fullname;
  OwnerVo owner;

  StarsVo(this.id, this.name, this.fullname, this.owner);
}
