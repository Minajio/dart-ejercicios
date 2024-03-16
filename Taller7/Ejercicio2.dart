import "dart:io";

void main(){
  print("Ingrese su nombre con mayuscula inicial:");
  String nombre = stdin.readLineSync().toString();
  print("Ingrese su sexo (F/M):");
  String sexo = stdin.readLineSync().toString();
  if(nombre[0] == "A" || nombre[0] == "B" || nombre[0] == "C" || nombre[0] == "D" || nombre[0] == "E" || nombre[0] == "F" || nombre[0] == "G" ||
  nombre[0] == "H" || nombre[0] == "I" || nombre[0] == "J" || nombre[0] == "K" || nombre[0] == "L" || nombre[0] == "M"){
    if(sexo == "F") print("Pertenece al grupo A");
    else print("Pertenece al grupo B");
  }
  else{
    if(sexo == "F") print("Pertenece al grupo B");
    else print("Pertenece al grupo A");
  }
}