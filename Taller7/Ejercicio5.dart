import "dart:io";

void main(){
  print("Ingrese el tipo de pizza que desee:");
  print("1. Vegetariana: 12.000\$\n2. Normal 9.000\$");
  int opcion = int.parse(stdin.readLineSync().toString());
  int precio = 0;
  
  if(opcion == 1){
    precio+=12000;
    print("Ingrese el ingrediente adicional que desee:");
    print("0. Sin ingredientes adicionales\n1. Pimiento: 1000\n2. Tofu: 2000\n3. Champinones: 3000");
    int opcion2 = int.parse(stdin.readLineSync().toString());

    precio+=(opcion2 == 1 ? 1000 : opcion2 == 2 ? 2000 : opcion2 == 3 ? 3000 : 0);
    print("Precio a pagar por su pizza vegetariana"+(opcion2 == 1 ? " con pimiento: " : opcion2 == 2 ? " con tofu: " : opcion2 == 3 ? " con champinones: " : ": ")+precio.toString());
  }
  else if(opcion == 2){
    precio+=9000;
    print("Ingrese el ingrediente adicional que desee:");
    print("0. Sin ingredientes adicionales\n1. Pepperoni: 2000\n2. Jamon: 3000\n3. Salmon: 5000");
    print("Ingrese cualquier otro numero para pedir sin ingredientes adicionales");
    int opcion2 = int.parse(stdin.readLineSync().toString());

    precio+=(opcion2 == 1 ? 2000 : opcion2 == 2 ? 3000 : opcion2 == 3 ? 5000 : 0);
    print("Precio a pagar por su pizza vegetariana"+(opcion2 == 1 ? " con pepperoni: " : opcion2 == 2 ? " con jamon: " : opcion2 == 3 ? " con salmon: " : ": ")+precio.toString());
  }
  else print("Opcion invalida");
}