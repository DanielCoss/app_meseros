import 'package:flutter/material.dart';
import 'package:meseros/modules/login.dart';

class settings extends StatelessWidget {
  const settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              width: 430,
              height: 700,
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      const SizedBox(
                        width: 10,
                      ), //SizedBox
                      const Text(
                        'Vibrar',
                        style: TextStyle(fontSize: 17.0),
                      ), //Text
                      const SizedBox(width: 10), //SizedBox
                      /** Checkbox Widget **/
                      Checkbox(
                        value: false,
                        onChanged: (bool? _value) {},
                      ), //Checkbox
                    ], //<Widget>[]
                  ),
                  Row(
                    children: <Widget>[
                      const SizedBox(
                        width: 10,
                      ), //SizedBox
                      const Text(
                        'Sonido de Notificación ',
                        style: TextStyle(fontSize: 17.0),
                      ), //Text
                      const SizedBox(width: 10), //SizedBox
                      /** Checkbox Widget **/
                      Checkbox(
                        value: false,
                        onChanged: (bool? _value) {},
                      ), //Checkbox
                    ], //<Widget>[]
                  ),
                  Row(
                    children: <Widget>[
                      const SizedBox(
                        width: 10,
                      ), //SizedBox
                      const Text(
                        'Mostrar notificación de alertas',
                        style: TextStyle(fontSize: 17.0),
                      ), //Text
                      const SizedBox(width: 10), //SizedBox
                      /** Checkbox Widget **/
                      Checkbox(
                        value: false,
                        onChanged: (bool? _value) {},
                      ), //Checkbox
                    ], //<Widget>[]
                  ),
                  Row(
                    children: <Widget>[
                      const SizedBox(
                        width: 10,
                      ), //SizedBox
                      const Text(
                        'Mostrar notificacion de retraso con una mesa ',
                        style: TextStyle(fontSize: 17.0),
                      ), //Text
                      const SizedBox(width: 10), //SizedBox
                      /** Checkbox Widget **/
                      Checkbox(
                        value: false,
                        onChanged: (bool? _value) {},
                      ), //Checkbox
                    ], //<Widget>[]
                  ),
                  Row(
                    children: <Widget>[
                      const SizedBox(
                        width: 10,
                      ), //SizedBox
                      const Text(
                        'Mostrar Notificaciones de orden lista',
                        style: TextStyle(fontSize: 17.0),
                      ), //Text
                      const SizedBox(width: 10), //SizedBox
                      /** Checkbox Widget **/
                      Checkbox(
                        value: false,
                        onChanged: (bool? _value) {},
                      ), //Checkbox
                    ], //<Widget>[]
                  ),
                  Row(
                    children: <Widget>[
                      const SizedBox(
                        width: 10,
                      ), //SizedBox
                      const Text(
                        'Mostrar Notificaciones de  cuenta lista',
                        style: TextStyle(fontSize: 17.0),
                      ), //Text
                      SizedBox(width: 10), //SizedBox
                      /** Checkbox Widget **/
                      Checkbox(
                        value: false,
                        onChanged: (bool? _value) {},
                      ), //Checkbox
                    ], //<Widget>[]
                  ),
                ],
              ),
              //Column
            ), //SizedBox
          ), //Padding
        ), //Card
      ),
    );
  }
}
