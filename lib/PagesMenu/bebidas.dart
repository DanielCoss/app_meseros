import 'package:flutter/material.dart';

class bebidas extends StatelessWidget {
  const bebidas({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        child: Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            border: TableBorder(
                bottom: BorderSide(
                    color: Colors.black, style: BorderStyle.none, width: 1.5)),
            children: [
              TableRow(children: [
                Text('Nombre',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Disponible',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Piezas',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Precio',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ]),
              TableRow(children: [
                Text('Agua', textAlign: TextAlign.center),
                Text('No', textAlign: TextAlign.center),
                Text('N/A', textAlign: TextAlign.center),
                Text('0', textAlign: TextAlign.center),
              ]),
              TableRow(children: [
                Text('Limonada', textAlign: TextAlign.center),
                Text('Si', textAlign: TextAlign.center),
                Text('20', textAlign: TextAlign.center),
                Text('20', textAlign: TextAlign.center),
              ]),
              TableRow(children: [
                Text('Naranjada', textAlign: TextAlign.center),
                Text('Si', textAlign: TextAlign.center),
                Text('25', textAlign: TextAlign.center),
                Text('20', textAlign: TextAlign.center),
              ]),
            ]),
      ),
    ));
  }
}
