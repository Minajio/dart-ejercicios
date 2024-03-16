import "dart:io";

void main(){
  List<String> asignaturas = ["Matematicas", "Fisica", "Quimica", "Historia", "Lengua"];
  List<double> notas = [];
  
  asignaturas.forEach((element) {
    print("Ingrese la nota para "+element+":");
    notas.add(double.parse(stdin.readLineSync().toString()));
  });

  int i = 0;
  asignaturas.forEach((element) {
    print(element+": "+notas[i].toString());
    i++;
  });
}