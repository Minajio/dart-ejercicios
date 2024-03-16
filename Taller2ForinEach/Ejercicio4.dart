import "dart:io";

void main(){
  Map<int, String> meses = {1:"Enero", 2:"Febrero", 3:"Marzo", 4:"Abril", 5:"Mayo", 6:"Junio", 7:"Julio", 8:"Agosto", 9:"Septiembre", 10:"Octubre", 11:"Noviembre", 12:"Diciembre"};

  print("Ingrese una fecha en este formato dd/mm/aaaa:");
  String fecha = stdin.readLineSync().toString();
  String dd = fecha[0]+fecha[1];
  String mm = fecha[3]+fecha[4];
  String aaaa = fecha[6]+fecha[7]+fecha[8]+fecha[9];

  int mmNum = int.parse(mm);

  bool encontrado = false;
  meses.keys.forEach((element) {
    if(mmNum == element) encontrado = true;
  });

  if(encontrado){
    print(dd+" de "+meses[mmNum].toString()+" de "+aaaa.toString());
  }
  else{
    print("Error, ese mes no existe");
  }
}