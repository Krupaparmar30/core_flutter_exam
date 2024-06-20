import 'package:core_flutter_exam/screens/details/detail.dart';
import 'package:core_flutter_exam/screens/homePage/homePage.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(myApp());
}
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => homePage(),
        '/next':(context) => detailsPage()
      },
    );
  }
}
