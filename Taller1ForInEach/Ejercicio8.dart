import "dart:io";

void main(){
  print("Ingrese una palabra:");
  String palabra = stdin.readLineSync().toString();

  List<String> vocales = ["a", "e", "i", "o", "u"];
  List<int> cantidadVocales = [0, 0, 0, 0, 0];

  int i = 0;

  vocales.forEach((vocal){
    for(int j = 0; j < palabra.length; j++){
      if(palabra[j] == vocal) cantidadVocales[i]++;
    }
    i++;
  });

  print("Cantidad de vocales en la palabra");

  i = 0;
  vocales.forEach((vocal){ 
    print(vocal+": "+cantidadVocales[i].toString());
    i++;
  });
}