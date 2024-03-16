import "dart:io";

void main(){
  print("Ingrese la nota del primer taller:");
  double taller1 = double.parse(stdin.readLineSync().toString());
  print("Ingrese la nota del segundo taller:");
  double taller2 = double.parse(stdin.readLineSync().toString());
  print("Ingrese la nota del examen final:");
  double examen = double.parse(stdin.readLineSync().toString());

  print("Nota final: "+(((taller1*30)+(taller2*30)+(examen*40))/(30+30+40)).toString());
}