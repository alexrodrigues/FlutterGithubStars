import 'package:alert/alert.dart';
import 'package:flutter/material.dart';
import 'package:github_stars/providers/stars_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    Provider.of<StarsProvider>(context, listen: false)
        .pageResponse
        .then((value) {
      print(value.items[0].fullname);
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
          : Container(
              color: Colors.black87,
            ),
    );
  }
}
