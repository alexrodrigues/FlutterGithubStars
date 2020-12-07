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
  Widget build(BuildContext context) {
    Provider.of<StarsProvider>(context).pageResponse.then((value) {
      print(value.toString());
      setState(() {
        _isLoading = false;
      });
    }).catchError((e) {
      Alert(message: 'Error: ${e.toString()}').show();
      print(e.toString());
    });

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
