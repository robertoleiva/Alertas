import 'package:flutter/material.dart';
import 'package:flutterwidgetseparado/paginas/pagina.dart';

class Principal extends StatefulWidget {
  Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(     //Como el estado Cambia, por eso aca se pone el SCAFFOLD
      appBar: AppBar(   // Constructor de la Clase APPBAR
        title:  Text("APP-XTRA"),
      ), 
      body: RaisedButton(
        child:  Text("Logearse"),
        onPressed: () => {
         Navigator.push(    
         context, MaterialPageRoute(builder: (context)=> Pagina()))
          },
        )
    );
  }
}