import 'package:flutter/material.dart';
import 'package:github_stars/models/vo/stars_vo.dart';

class GithubItem extends StatelessWidget {
  final StarsVo _vo;

  GithubItem(this._vo);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.0, right: 16.0),
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            child: Image.network(
              _vo.owner.avatarUrl,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            _vo.fullname,
            style: TextStyle(fontSize: 13.0),
          ),
          subtitle: Text(
            _vo.name,
            style: TextStyle(fontSize: 11.0, color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
