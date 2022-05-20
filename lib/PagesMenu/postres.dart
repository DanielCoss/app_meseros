import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class OrdenesItem {
  String nombre;
  bool disponible;
  String piezas;
  String precio;

  bool selected;

  OrdenesItem(
      this.nombre, this.disponible, this.piezas, this.precio, this.selected);
}

List<OrdenesItem> _totalpostres = [
  OrdenesItem("Helado", true, "20", "20", false),
  OrdenesItem("Pay de queso", true, "20", "20", false),
  OrdenesItem("Arroz c/ leche", false, "20", "20", false),
];

class postres extends StatefulWidget {
  //const postres({Key? key}): super(key:key);
  @override
  _postresState createState() => _postresState();
}

class _postresState extends State<postres> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: _buildTable(sortAscending: true),
    ));
  }
}

Widget _buildTable({bool sortAscending = true}) {
  return DataTable(
    columns: <DataColumn>[
      const DataColumn(
          label: Text(
        'Nombre',
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
      const DataColumn(
          label: Text(
        'Disponible',
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
      DataColumn(
        label: Text(
          'Piezas',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        tooltip: 'Piezas',
        //onSort: (int index,bool ascending )
      ),
      DataColumn(
        label: Text(
          'Precio',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        tooltip: 'Precio',
        //onSort: (int index,bool ascending )
      )
    ],
    rows: _totalpostres.map<DataRow>((OrdenesItem orden) {
      return DataRow(
        cells: <DataCell>[
          DataCell(
            Text('${orden.nombre}'),
          ),
          DataCell((orden.disponible)
              ? Icon(Icons.radio_button_checked_outlined)
              : Icon(Icons.radio_button_off)),
          DataCell(
            Text('${orden.piezas}'),
          ),
          DataCell(
            Text('${orden.precio}'),
          ),
        ],
      );
    }).toList(),
  );
}
