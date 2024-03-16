import "dart:io";

void main(){
  Map<String, String> divisas = {"euro":"€", "dollar":"\$", "yen":"¥"};
  print("Ingrese una divisa:");
  String usuarioDivisa = stdin.readLineSync().toString();

  bool encontrado = false;
  divisas.keys.forEach((element) {
    if(usuarioDivisa.toLowerCase() == element)  encontrado = true;
  });
  
  if(encontrado) print(divisas[usuarioDivisa.toLowerCase()]);
  else print("No se ha encontrado la divisa en el sistema");
}