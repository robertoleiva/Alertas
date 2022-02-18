import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutterwidgetseparado/principal/campos.dart';//Paquete, Nombre de la APP, Directorio, nombre del archivo


//Este es otro componente que se utiliza 2°, luego se cambia el nombre donde dice name
//El SCAFFOLD VA aqui Donde esta el STATE
class UsoWid extends StatefulWidget {
  UsoWid({Key? key}) : super(key: key);

  @override
  State<UsoWid> createState() => _UsoWidState();
}

class _UsoWidState extends State<UsoWid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(     //Como el estado Cambia, por eso aca se pone el SCAFFOLD
     appBar: AppBar(   // Constructor de la Clase APPBAR
        title: Text("APP-LEIVA"),
     ), 
      body: mensaje(context),
      
    );
  }
}

Widget mensaje(context){
  return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/Andes.jpg"),

            // image: NetworkImage("https://tuul.tv/sites/default/files/inline-images/viajes%2Bastrales.jpg"),
            fit: BoxFit.cover)),

        child: Center(
          child: Column(//Text("VACACIONES-YAAAA"), 
            mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            nombre(), 
            camposUsuario(), 
            SizedBox(
              height: 10,
            ),
            camposPass(),
             SizedBox(
               height: 15,
             ),
            botonAceptar(context),
            SizedBox(
              height: 10,
            ), 
            botonCancelar(context)
            ],
        )),    
    );
}


