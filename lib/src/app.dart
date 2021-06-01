import 'package:app_asc/src/repository/school_repository.dart';
import 'package:app_asc/src/screens/home_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final SchoolRepository schoolRepository;

  const MyApp({Key key, this.schoolRepository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
