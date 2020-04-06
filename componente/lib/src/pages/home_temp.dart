import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

final opciones = ['uno','dos','tres','cuatro'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temporal'),

      ),
      body: ListView(
        // children: _crearItems()
        children: _crearItemsCorta()
      ),
    );
  }

  List<Widget> _crearItems()
  {

    List<Widget> lista = new List<Widget>();
    for(var op in opciones)
    {
      final tempWidget = ListTile(
        title: Text(op),
      );
      lista.add(tempWidget);
      lista.add(Divider());
    }
    return lista;
  }

   List<Widget> _crearItemsCorta()
   {
     var widget = opciones.map((item)
     {
       return ListTile(
         title: Text(item + '!'),
         subtitle: Text('Abita'),
         leading: Icon(Icons.access_alarm),
         trailing: Icon(Icons.keyboard_arrow_right),
         onTap: (){},
       );

     }).toList();
     return widget;
   }
}