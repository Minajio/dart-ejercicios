import "dart:io";

void main(){
  print("Ingrese un numero:");
  int n = 0;
  int num = int.parse(stdin.readLineSync().toString());
  for(int i = 1; i <= num; i++){
    n+=i;
  }
  print(n);
}