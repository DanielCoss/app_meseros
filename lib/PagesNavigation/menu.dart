import 'package:flutter/material.dart';
import '/PagesMenu/bebidas.dart';
import '/PagesMenu/comidas.dart';
import '/PagesMenu/postres.dart';

class menu extends StatelessWidget {
  const menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              unselectedLabelColor: Colors.white,
              tabs: [
                Text('Comidas'),
                Text('Bebidas'),
                Text('Postres'),
              ],
            ),
            title: const Text('Menu'),
          ),
          body: TabBarView(
              children: <Widget>[new comidas(), new bebidas(), new postres()]),
        ),
      ),
      theme: ThemeData(
          colorScheme:
              ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple)),
    );
  }
}
