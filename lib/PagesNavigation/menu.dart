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
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white54,
              tabs: [
                Text('COMIDAS', style: TextStyle(fontSize: 14.0)),
                Text('BEBIDAS', style: TextStyle(fontSize: 14.0)),
                Text('POSTRES', style: TextStyle(fontSize: 14.0)),
              ],
            ),
            title: const Text('Menu'),
          ),
          body: const TabBarView(
              children: <Widget>[comidas(), bebidas(), postres()]),
        ),
      ),
      theme: ThemeData(
          colorScheme:
              ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple)),
    );
  }
}
