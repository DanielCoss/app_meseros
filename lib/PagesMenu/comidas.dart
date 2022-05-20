import 'package:flutter/material.dart';

class OrdenesItem {
  String nombre;
  bool disponible;
  String piezas;
  String precio;

  bool selected;

  OrdenesItem(
      this.nombre, this.disponible, this.piezas, this.precio, this.selected);
}

List<OrdenesItem> _totalcomidas = [
  OrdenesItem("Pastel Azteca", true, "20", "20", false),
  OrdenesItem("Hamburguesa", false, "20", "20", false),
  OrdenesItem("Hot dog", false, "20", "20", false),
  OrdenesItem("Pizza individual", false, "20", "20", false),
  OrdenesItem("Pizza familiarr", false, "20", "20", false),
];

class comidas extends StatefulWidget {
  @override
  _comidasState createState() => _comidasState();
}

class _comidasState extends State<comidas> {
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
    rows: _totalcomidas.map<DataRow>((OrdenesItem orden) {
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

 /*disponibilidad(bool or){
  if(or==true){
    return Icon(Icons.radio_button_checked_outlined,color: Colors.teal,);

  }
  else(){
    return Icon(Icons.radio_button_off,color: Colors.teal,);
  };
}*/