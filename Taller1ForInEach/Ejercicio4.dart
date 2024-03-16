import "dart:io";

void main(){
  List<int> numerosGanadores = [0, 0, 0];
  print("Ingrese los numeros ganadores de la loteria:");

  for(int i = 0; i < numerosGanadores.length; i++){
    numerosGanadores[i] = int.parse(stdin.readLineSync().toString());
  }

  numerosGanadores.sort();

  numerosGanadores.forEach((element) => stdout.write(element.toString()+" "));
}