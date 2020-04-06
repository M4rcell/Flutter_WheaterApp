//primero importar el material q se va usar
import 'package:flutter/material.dart';

//crear una clase backwheater exteends   statelessWidges widgets sin estado o como un boton cuando das click no hay ninguna ccion

class BackWheater extends StatelessWidget
{
  //lo que permite construir o llamado constructor

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //llamar gradiente
    // con Stack poner color naranja en toda la pantalla despues el color blnaco

    return new Stack(
      //children dividir las pantallas as que se tranlapan
      children: <Widget>[
        //llamar la calase creado GradienBack
           new GradienBack(),
        //posicionar el color blanco
        new Positioned(
            //POSICIONAR AL FONDO DE LA PANTALLA
           bottom: 0.0,
            child: new Container(
          //poner el ancho quese adapte al contenido de la pantalla
          width: MediaQuery.of(context).size.width,
          //poner la altura
          height: 200.0,
          //poner el color
          color: Colors.white
        )
        )
      ],
    );
  }
}
//crear una clase
//dividir la parte naranja y la parte blanca de la pantalla
// escafull la parte de la estructura de la panatalla

class GradienBack  extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // loa continer son inguales a los div que se utiliza el web
    return new Container (
      // carateristicas de color
      decoration: new BoxDecoration(
        //poner de que forma se hace el gradiente -> forma lenial
        gradient: new LinearGradient(
            colors: [
              Color(0xFFffbb08),
              Color(0xFFff38c02)
            ],
                //begin sirve para en que tanto hay union delos colores
              begin: const FractionalOffset(1.0, 0.1),
              end:const FractionalOffset(1.0, 0.9)
        )
      ),
    );

  }

}

