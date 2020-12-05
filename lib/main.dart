import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:color_to_material/color_to_material.dart';

import './screens/home_screen.dart';
import './providers/stars_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: StarsProvider()),
      ],
      child: MaterialApp(
        title: 'Github Stars',
        theme: ThemeData(
          primarySwatch: ColorToMaterial(Colors.black).getMaterialColor(),
          accentColor: ColorToMaterial(Colors.white).getMaterialColor(),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: "/",
        routes: {
          "/": (ctx) => HomeScreen(),
        },
      ),
    );
  }
}
