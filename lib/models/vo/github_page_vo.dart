import 'package:github_stars/models/vo/stars_vo.dart';

class GithubPageVo {
  int totalCount;
  List<StarsVo> items;

  GithubPageVo(this.totalCount, this.items);
}
