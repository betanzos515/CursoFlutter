import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['Uno','Dos','Tres','Cuatro','Cinco'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: _crearItemsCorta(),
      ),
    );
  }


  List<Widget> _crearItems(){
    List<Widget> lista = new List<Widget>();

    for(String opt in opciones){
      final tempWidget = ListTile(
        title: Text(opt)
      );
      lista.add(tempWidget);
      lista.add(Divider(color:Color.fromARGB(150, 43, 120, 12)));
    }
    return lista;
  }

  List<Widget> _crearItemsCorta(){
    return opciones.map((elemento){
      return Column(
        children: <Widget>[
          ListTile(
            title:Text(elemento+" !"),
            subtitle: Text('Subtitulo'),
            leading: Icon(Icons.ac_unit),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}