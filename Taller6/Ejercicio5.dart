import "dart:io";

void main(){
  print("Ingrese las horas trabajadas:");
  int horas = int.parse(stdin.readLineSync().toString());
  print("Ingrese el valor por hora:");
  int valor = int.parse(stdin.readLineSync().toString());

  if(horas < 41){
    print("Saldo: "+(valor*horas).toString());
  }
  else{
    print("Saldo: "+((valor*(horas-(horas-40)))+((valor+(valor*0.5))*(horas-40))).toString());
  }
}