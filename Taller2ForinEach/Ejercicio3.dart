import "dart:io";

void main(){
  Map<String, double> frutas = {"platano":1.35, "manzana":0.8, "pera":0.85, "naranja":0.7};

  print("Ingrese una fruta:");
  String frutaUsuario = stdin.readLineSync().toString();

  bool encontrado = false;
  frutas.keys.forEach((element) {
    if(frutaUsuario.toLowerCase() == element) encontrado = true;
  });

  if(encontrado){
    print("Ingrese los kilos a comprar:");
    double kilos = double.parse(stdin.readLineSync().toString());
    print("Monto a pagar: "+(frutas[frutaUsuario.toLowerCase()]! * kilos).toString());
  }
  else{
    print("No se ha encontrado la fruta en el sistema");
  }
}