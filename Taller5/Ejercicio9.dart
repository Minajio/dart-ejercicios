import "dart:io";

void main(){
  int meses = 0;
  print("Ingrese su capital:");
  double capital = double.parse(stdin.readLineSync().toString());
  double capital2 = capital;
  while(capital2 < capital * 2){
    capital2 += capital*(0.05);
    meses++;
  }
  print(meses);
}