import 'package:flutter/material.dart';
import 'package:flutter_github/home/di/home_module.dart';
import 'package:flutter_github/home/presentation/home_page.dart';
import 'package:get_it/get_it.dart';

void main() {
  GetIt.asNewInstance();
  HomeModule().provideModule();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (ctx) => HomePage(
                cubit: GetIt.I.get(),
              ),
        });
  }
}
