import 'package:flutter/material.dart';
import '/PagesNavigation/menu.dart';
import '/PagesNavigation/conectados.dart';
import '/PagesNavigation/mesas.dart';

class routes extends StatelessWidget {
  final int index;
  const routes({Key? key, required this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Widget> myList = [const menu(), const mesas(), const conectados()];
    return myList[index];
  }
}
