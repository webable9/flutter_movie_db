import 'package:flutter/material.dart';
import 'package:flutter_movie_db/src/provider/count_provider.dart';
import 'package:flutter_movie_db/src/provider/bottom_navigation_provider.dart';
import 'package:flutter_movie_db/src/provider/movie_provider.dart';
import 'package:flutter_movie_db/src/ui/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
              create: (BuildContext context) => CountProvider()),
          ChangeNotifierProvider(
              create: (BuildContext context) => BottomNavigationProvider()),
          ChangeNotifierProvider(
              create: (BuildContext context) => MovieProvider())
        ],
        child: Home(),
      ),
    );
  }
}