import "dart:io";

void main(){
  print("Ingrese su edad:");
  int edad = int.parse(stdin.readLineSync().toString());
  if(edad < 4) print("Entra gratis!");
  else if(edad >= 4 && edad < 18) print("Precio de entrada: 5.000\$");
  else if(edad >= 18) print("Precio de entrada 10.000\$");
}