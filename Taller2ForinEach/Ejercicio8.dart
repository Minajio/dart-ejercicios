import "dart:io";

void main(){
  Map<String, String> diccionario = {};
  String formato;
  List<String> palabras = [];

  print("Ingrese palabras al diccionario en el siguiente formato: \"palabraEnEspanol: palabraEnIngles\"");
  print("Para dejar de ingresar palabras al diccionario ingrese \"cancelar\"");
  do{
    print("Ingrese una entrada al diccionario:");
    formato = stdin.readLineSync().toString();
    if(formato != "cancelar"){
      palabras = formato.split(": ");
      diccionario[palabras[0]] = palabras[1];
      palabras = [];
    }
  }while(formato != "cancelar");

  print("Diccionario:");
  diccionario.forEach((key, value) => print(key+": "+value));

  print("Ingrese una frase para traducir:");
  String frase = stdin.readLineSync().toString();
  palabras = [];
  palabras = frase.split(" ");
  int contador = 0;
  palabras.forEach((element) {
    diccionario.keys.forEach((element2) {
      if(element == element2){
        palabras[contador] = diccionario[element2].toString();
      }
    });
    contador++;
  });
  frase = "";
  palabras.forEach((element) => frase+=element+" ");
  print("Frase traducida:");
  print(frase);
}