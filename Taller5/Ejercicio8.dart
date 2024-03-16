import "dart:io";
import "dart:math";

void main(){
  int n1 = Random().nextInt(101);
  int n2 = Random().nextInt(101);
  int res = -1;
  while(res != n1 + n2){
    print("$n1 + $n2:");
    res = int.parse(stdin.readLineSync().toString());
  }
  print("Felicidades");
}