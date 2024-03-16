import "dart:io";

void main(){
  List<String> asignaturas = ["Matematicas", "Fisica", "Quimica", "Historia", "Lengua"];
  List<double> notas = [];
  List<int> aprobadas = [];


  int i = 0;
  asignaturas.forEach((element) {
    print("Ingrese la nota para "+element+":");
    notas.add(double.parse(stdin.readLineSync().toString()));
    if(notas[i] > 2.9) aprobadas.add(i);
    i++;
  });  

  if(aprobadas.length > 0){
    aprobadas.reversed.forEach((element) {
      asignaturas.removeAt(element);
      notas.removeAt(element);
    });
  }

  print("Materias que tiene que repetir:");

  i = 0;
  asignaturas.forEach((element) {
    print(element+": "+notas[i].toString());
    i++;
  });
}