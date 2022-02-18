import 'dart:html';
import 'dart:developer';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutterwidgetseparado/paginas/pagina.dart';
import 'package:flutterwidgetseparado/principal/principal.dart';



Widget nombre(){
  return Text(
    "Iniciar", 
    style: TextStyle(
      color: Colors.red, fontSize: 55.0, fontWeight: FontWeight.bold),
      );
}

Widget camposUsuario(){
  
  return Container(
    
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
  child: TextField(
    decoration: InputDecoration(hintText: "Usuario", fillColor:Colors.white, filled: true), //Todo esto es para decorar la caja de texto 
   )
  );
}


Widget camposPass(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
  child: TextField(
    obscureText: true,
    decoration: InputDecoration(hintText: "Password", fillColor:Colors.white, filled: true), //Todo esto es para decorar la caja de texto 
   )
  );
}

Widget botonAceptar(context){
  return ElevatedButton(
    onPressed: ()=> {validateUser(context)},
    child: Text("Sesion") ); 
}

Widget botonCancelar(context){
  return FlatButton(
      color: Colors.redAccent,
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
    onPressed: ()=> {
      Navigator.push(
        context, MaterialPageRoute(builder: (context) => Principal()))
    }, 
    child: Text("Cancelar"),
    );

}

validateUser(context){
    if(user.text == 'leiva' && password.text == '123'){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> Pagina()));
    }else{
      return showDialog(
        context: context, 
        builder: (context){
          return AlertDialog(
            content: Text("USUARIO O CONTRASEÑA INVALIDOS"),
          );
        }
      );
    }
}