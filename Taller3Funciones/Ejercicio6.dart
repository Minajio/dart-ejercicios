import "dart:io";

void main(){
  print("Ingrese un numero");
  int n = int.parse(stdin.readLineSync().toString());
  print("El numero "+n.toString()+" es "+(n > 0 ? "positivo" : n < 0 ? "negativo" : "neutral")+" y es "+(n % 2 == 0 ? "par" : "impar"));
}