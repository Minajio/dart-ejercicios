import "dart:io";

void main(){
  print("Ingrese sus puntos acumulados:");
  int puntos = int.parse(stdin.readLineSync().toString());
  if(puntos < 20){
    print("Inaceptable!, debe mejorar su desempeno");
    print("su bono es de 0\$");
  }
  else if(puntos >= 20 && puntos < 40){
    print("Regular");
    print("Su bono es de 200.000\$");
  }
  else if(puntos >= 40 && puntos < 60){
    print("Aceptable");
    print("Su bono es de 400.000\$");
  }
  else{
    print("Sobresaliente!");
    print("Su bono es de 600.000\$");
  }
}