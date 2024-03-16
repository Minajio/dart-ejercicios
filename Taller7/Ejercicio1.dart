import "dart:io";

void main(){
  const int SMLV = 1300000;
  print("Ingrese su edad:");
  int edad = int.parse(stdin.readLineSync().toString());
  print("Ingrese cuanto gana mensualmente:");
  int saldo = int.parse(stdin.readLineSync().toString());
  int renta = 0;
  if(edad > 30 && saldo > SMLV * 2){
    renta = (saldo * 0.2).toInt();
  }
  if(edad > 50 && saldo > SMLV){
    renta = (saldo * 0.1).toInt();
  }
  print("Debe pagar "+renta.toString()+"\$ de renta");
}