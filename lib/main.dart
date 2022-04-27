import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:developer';
import 'modules/menu.dart';
import 'modules/login.dart';
import '../PagesNavigation/NavigationBar.dart';
import '../PagesNavigation/routes.dart';

void main() {
  runApp(const Login());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Meseros',
        theme: ThemeData(
            colorScheme:
                ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple)),
        home: const HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  BarNavig? myBN;

  // static const SystemUiOverlayStyle overlayStyle = SystemUiOverlayStyle(
  //   systemNavigationBarColor: Colors.red,
  //   systemNavigationBarIconBrightness: Brightness.light,
  //   systemNavigationBarDividerColor: Colors.blue,
  // );

  @override
  void initState() {
    myBN = BarNavig(currentIndex: (i) {
      setState(() {
        index = i;
      });
    });
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   SystemChrome.setSystemUIOverlayStyle(overlayStyle);
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: myBN,
      body: routes(index: index),
    );
  }
}
