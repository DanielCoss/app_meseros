import 'package:flutter/material.dart';

class comidas extends StatelessWidget{
  const comidas({Key? key}): super(key:key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Center(
          child: Container(

            child: Table(

                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                border: TableBorder(bottom: BorderSide(color:Colors.black,style: BorderStyle.none,width: 1.5)),

                children: [TableRow(
                    children: [
                      Text('Nombre',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Disponible',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Piezas',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Precio',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold)),
                    ]),
                  TableRow(
                      children: [
                        Text('Pastel Aztexa',textAlign: TextAlign.center),
                        Text('Si',textAlign: TextAlign.center),
                        Text('12',textAlign: TextAlign.center),
                        Text('100',textAlign: TextAlign.center),
                      ]),
                  TableRow(
                      children: [
                        Text('Hamburguesa',textAlign: TextAlign.center),
                        Text('Si',textAlign: TextAlign.center),
                        Text('20',textAlign: TextAlign.center),
                        Text('100',textAlign: TextAlign.center),
                      ]),
                  TableRow(
                      children: [
                        Text('Hot dog',textAlign: TextAlign.center),
                        Text('No',textAlign: TextAlign.center),
                        Text('N/A',textAlign: TextAlign.center),
                        Text('100',textAlign: TextAlign.center),
                      ]),
                ]),

          ),
        )
    );
  }
}