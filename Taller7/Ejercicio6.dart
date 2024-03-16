import "dart:io";

void main(){
  print("Ingrese el candidato por el que desea votar:");
  print("A. Partido rojo\nB. Partido verde\nC. Partido azul");
  String opcion = stdin.readLineSync().toString();

  if(opcion == "A" || opcion == "a"){
    print("Ha votado por el partido rojo");
  }
  else if(opcion == "B" || opcion == "b"){
    print("Ha votado por el partido verde");
  }
  else if(opcion == "C" || opcion == "c"){
    print("Ha votado por el partido azul");
  }
  else{
    print("Opcion invalida");
  }
}