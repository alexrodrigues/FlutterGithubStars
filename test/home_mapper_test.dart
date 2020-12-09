import 'dart:math';

import 'package:github_stars/mapper/home_mapper.dart';
import 'package:github_stars/models/github_page.dart';
import 'package:github_stars/models/star.dart';
import 'package:test/test.dart';

void main() {
  group("testing mapper", () {
    test("star into star vo", () {
      final star = {
        "id": 432443243,
        "name": "Alex",
        "full_name": "Alex Rodrigues",
        "owner": {
          "avatar_url": "some url",
          "url": "some url",
        }
      };
      final vo = startToVo(star);
      expect(vo.name, equals("Alex"));
      expect(vo.fullname, equals("Alex Rodrigues"));
      expect(vo.owner.avatarUrl, equals("some url"));
    });
    test("page into vo", () {
      final page = GithubPage();
      page.items = List();
      page.totalCount = 10;

      expect(page.totalCount, equals(10));
    });
  });
}
