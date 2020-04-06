import 'package:flutter/material.dart';
import 'package:weater/BackWheater.dart';
class Header extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    // contruyendo el boton
    final button = new InkWell(

      child: new Container(
        margin:  new EdgeInsets.only(
          top: 30.0,
          left: 20.0,
          right:20
        ),
        height: 50,
        width: 180,

        decoration: new BoxDecoration(
          //boxShadow es la sombra del boton
          boxShadow: [
            new BoxShadow(
              color: Color(0xFFf38b02),
              offset: new Offset(10.0, 10.0),
              blurRadius: 30.0
            )
          ],
          // boton radios
          borderRadius: new BorderRadius.circular(30.0),
            color: Color(0xFFfeb800),
        ),
        // texto del boton
        child: new Center(
          child: new Text(
            "GO TO CALENDAR",
            style: const TextStyle(
                fontSize: 12.0,
                color: Colors.white,
                fontWeight: FontWeight.w900
          ),
        ),
      ),
    )

    );

    //scafull
    return  new Scaffold(
      //stack se usa para poner encima de
      body: new Stack(
        children: <Widget>[
          // llamar a la clase
          new BackWheater(),
          //poner un contenedor

          new Container(
            //alinear al centro
            alignment: Alignment.center,
            // poner algunos margenes
            margin: new EdgeInsets.only(
                top: 50.0
            ),
           //nodos de hijos
            // todo quede en la columna

            child: new Column(
            children: <Widget>[
              // poner estilo del texto
              new Text(
                "TUESDAY",
                    style: const TextStyle(
                      fontSize: 55.0,
                      color: Color(0xFFeba000),
                      fontWeight: FontWeight.w600
                    ),
              ),
                    // TODO: BOTON DEL TEXTO DEBAJO DE TEXTO
                    button
            ],
            ),
          )
        ],
      ),
    );
  }

}