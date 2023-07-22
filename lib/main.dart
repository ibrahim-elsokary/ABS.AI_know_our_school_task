import 'package:flutter/material.dart';
import 'package:know_our_school/View/school_info.dart';
import 'package:know_our_school/data/local/repository/school_info_repo_implementation.dart';

void main() {
  SchoolInfoImple().getSchoolInfoList();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'know our school',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SchoolInfo(),
    );
  }
}
