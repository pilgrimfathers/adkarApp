import 'package:adhakr/dikr.dart';
import 'package:adhakr/test.dart';
import 'package:adhakr/widgets.dart';
import 'package:adhakr/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        darkTheme: ThemeData(brightness: Brightness.dark),
        debugShowCheckedModeBanner: false,
        home: const dikr());
  }
}
