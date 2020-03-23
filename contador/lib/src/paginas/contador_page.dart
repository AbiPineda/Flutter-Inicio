import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class ContadorPage extends StatefulWidget
{
   @override
  createState() => _ContadorPageState();
 
}
class _ContadorPageState extends State<ContadorPage>
{
  final _estiloTexto = new TextStyle(fontSize: 30);
  int _conteo=0;

   @override
  Widget build(BuildContext context) {
    
    var scaffold = Scaffold(
          appBar: AppBar(
            title: Text('Contador'),
            centerTitle: true, //centrar titulo
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Numero de clicks', style: _estiloTexto),
                Text('$_conteo', style: _estiloTexto),
              ],
            )
          ),
           bottomNavigationBar: BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: Container(height: 50.0,),
           ),
          floatingActionButton: FloatingActionButton(
      onPressed: () {
         setState(() {
            _conteo++;
        });
      },
      child: Icon(Icons.navigation),
      backgroundColor: Colors.green,
    ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
 
        );
        return scaffold;
  }
}

 
