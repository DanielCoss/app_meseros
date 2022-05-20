import 'package:flutter/material.dart';
import 'package:meseros/PagesMenu/comidas.dart';

class OrdenesItem {
  String nombre;
  bool disponible;
  String piezas;
  String precio;

  OrdenesItem(this.nombre, this.disponible, this.piezas, this.precio);
}

List<OrdenesItem> _totalbebidas = [
  OrdenesItem("Agua", true, "20", "20"),
  OrdenesItem("Naranjada", false, "20", "20"),
  OrdenesItem("Limonada", false, "20", "20"),
  OrdenesItem("Coca-Cola", false, "20", "20"),
  OrdenesItem("Fresca", false, "20", "20"),
];

class bebidas extends StatefulWidget {
  @override
  _bebidasState createState() => _bebidasState();
}

class _bebidasState extends State<bebidas> {
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
          ),
          tooltip: 'Nombre'),
      const DataColumn(
          label: Text(
            'Disponible',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          tooltip: 'Disponibilidad'),
      DataColumn(
        label: Text(
          'Piezas',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        tooltip: 'Piezas en existencia',
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
    rows: _totalbebidas.map<DataRow>((OrdenesItem orden) {
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
