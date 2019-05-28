import 'package:flutter/foundation.dart';

class MyProvider with ChangeNotifier {
  //Creamos una clase "MyProvider" y le agregamos las capacidades de Change Notifier.
  /*
    La propiedad WITH

    Un mixin se refiere a  agregar las capacidades de otra clase o clases a nuestra propia clase,
    sin heredar de esas clases. Los métodos de esas clases ahora pueden llamarse en su clase, y el código 
    dentro de esas clases se ejecutará. Dart no tiene herencia múltiple, pero el uso de mixins le permite 
    plegarse en otras clases para lograr la reutilización del código y evitar los problemas que podría causar
   la herencia múltiple.

  */

  String _mitexto =
      "Texto Inicial"; //Dentro de nuestro provider, creamos e inicializamos nuestra variable.

  String get mitexto =>
      _mitexto; //Creamos el metodo Get, para poder obtener el valor de mitexto

  //Ahora creamos el metodo set para poder actualizar el valor de _mitexto, este metodo recibe un valor newTexto de tipo String
  set mitexto(String newTexto) {
    _mitexto = newTexto; //actualizamos el valor
    notifyListeners(); //notificamos a los widgets que esten escuchando el stream.
  }
}
