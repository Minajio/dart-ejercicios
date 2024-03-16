import "dart:io";

void main(){
  print("Ingrese el primer numero:");
  int n1 = int.parse(stdin.readLineSync().toString());
  print("Ingrese el segundo numero:");
  int n2 = int.parse(stdin.readLineSync().toString());
  int sum = 0;
  for(int i = n1 + 1; i < n2; i++){
    sum+=i;
  }
  print(sum);
}