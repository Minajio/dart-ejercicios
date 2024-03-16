import "dart:io";

void main(){
  Map<int, double> facturas = {1001: 10000, 3471: 5700};
  while(true){
    double valorTotal = 0;
    facturas.values.forEach((element) => valorTotal+=element);
    print("Cantidad total a pagar: "+valorTotal.toString());
    print("Que desea hacer?\n1. Anadir factura\n2. Pagar factura\n3. Cerrar programa");
    int opcion = int.parse(stdin.readLineSync().toString());
    if(opcion == 1){
      print("Ingrese el numero de la factura:");
      int numTemp = int.parse(stdin.readLineSync().toString());
      bool encontrada = false;
      facturas.keys.forEach((element) {
        if(numTemp == element){
          encontrada = true;
        }
      });
      if(encontrada){
        print("Error, esa factura ya existe");
      }
      else{
        print("Ingrese el valor de la factura:");
        facturas[numTemp] = double.parse(stdin.readLineSync().toString());
      }
    }
    else if(opcion == 2){
      print("Facturas a pagar:");
      facturas.forEach((key, value) => print(key.toString()+": "+value.toString()));
      print("Ingrese el numero de la factura que quiere pagar:");
      int numTemp = int.parse(stdin.readLineSync().toString());
      bool encontrada = false;
      facturas.keys.forEach((element) {
        if(numTemp == element) encontrada = true;
      });
      if(encontrada){
        facturas.remove(numTemp);
        print("Factura pagada con exito");
      }
      else{
        print("Error, esa factura no existe");
      }
    }
    else if(opcion == 3){
      print("Cerrando programa...");
      break;
    }
    else{
      print("Opcion invalida!");
    }
  }
}