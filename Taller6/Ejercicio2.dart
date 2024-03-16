import "dart:io";

void main(){
  print("Ingrese el total a pagar:");
  int total = int.parse(stdin.readLineSync().toString());
  print("Ingrese el mes de la compra:");
  int mes = int.parse(stdin.readLineSync().toString());
  if(mes == 1 || mes == 2 || mes == 3){
    print("Monto a pagar: "+(total-(total*0.15)).toString()+"(15%)");
  }
  else if(mes == 4 || mes == 5 || mes == 6){
    print("Monto a pagar: "+(total-(total*0.20)).toString()+"(20%)");
  }
  else{
    print("Monto a pagar: "+total.toString()+"(0%)");
  }
}