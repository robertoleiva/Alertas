import 'package:flutter/material.dart';
import 'package:flutterwidgetseparado/principal/principal.dart';
import 'package:flutterwidgetseparado/principal/usowidget.dart';//Paquete, Nombre de la APP, Directorio, nombre del archivo

void main() {
  runApp(UsoWidgets());
}

//Este es el CONTENEDOR, 1° LO QUE SE CREA PRIMERO.
class UsoWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(   // Esto es de rigor para llamar a la clase
      title: "ClaseWidgets", // Es de Rigor para llamar las Subclases
       home: UsoWid(),
       
      // home: Principal(),       // Es de Rigor para llama a la clase
    );
  }
}

