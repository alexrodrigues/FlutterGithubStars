import 'package:alert/alert.dart';
import 'package:flutter/material.dart';
import 'package:github_stars/models/vo/stars_vo.dart';
import 'package:github_stars/providers/stars_provider.dart';
import 'package:github_stars/widgets/github_item.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isLoading = true;
  List<StarsVo> vos = List();

  @override
  void initState() {
    super.initState();
    Provider.of<StarsProvider>(context, listen: false)
        .pageResponse
        .then((value) {
      vos = value.items;
      setState(() {
        _isLoading = false;
      });
    }).catchError((e) {
      Alert(message: 'Error: ${e.toString()}').show();
      print(e.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Github Stars"),
      ),
      body: _isLoading
          ? Container(
              color: Colors.black87,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
          : ListView.builder(
              itemCount: vos.length,
              itemBuilder: (ctx, index) {
                return GithubItem(vos[index]);
              },
            ),
    );
  }
}
