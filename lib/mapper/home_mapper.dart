import 'dart:collection';

import 'package:github_stars/models/github_page.dart';
import 'package:github_stars/models/vo/github_page_vo.dart';
import 'package:github_stars/models/vo/owner_vo.dart';
import 'package:github_stars/models/vo/stars_vo.dart';

GithubPageVo githubToVo(GithubPage page) {
  return GithubPageVo(
    page.totalCount,
    page.items.map((e) {
      return startToVo(Map<String, dynamic>.from(e));
    }).toList(),
  );
}

StarsVo startToVo(Map star) {
  return StarsVo(
    star['id'],
    star['name'],
    star['name'],
    OwnerVo(star['owner']['avatarUrl'], star['owner']['githubUrl']),
  );
}
