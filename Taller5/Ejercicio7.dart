import "dart:io";

void main(){
  int n1 = 0;
  int n2 = 0;
  while(true){
    print("Ingrese el primer numero:");
    n1 = int.parse(stdin.readLineSync().toString());
    print("Ingrese el segundo numero:");
    n2 = int.parse(stdin.readLineSync().toString());
    if(n1 != 0 && n2 != 0) print(n1+n2);
    else break;
  }
}