import 'package:flutter/material.dart';

class BarNavig extends StatefulWidget {
  final Function currentIndex;
  const BarNavig({Key? key, required this.currentIndex}) : super(key: key);
  @override
  _BarNavigState createState() => _BarNavigState();
}

class _BarNavigState extends State<BarNavig> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: (int i) {
        setState(() {
          index = i;
          widget.currentIndex(i);
        });
      },
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      backgroundColor: Colors.deepPurple,
      iconSize: 20.0,
      selectedFontSize: 15.0,
      unselectedFontSize: 13.0,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.article_outlined), label: "Menú"),
        BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: "Mesas"),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: "Conectados"),
      ],
    );
  }
}
