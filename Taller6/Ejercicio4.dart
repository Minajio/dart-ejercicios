import "dart:io";

void main(){
  print("Ingrese el primer numero:");
  int n1 = int.parse(stdin.readLineSync().toString());
  print("Ingrese el segundo numero:");
  int n2 = int.parse(stdin.readLineSync().toString());
  print("Ingrese el tercer numero:");
  int n3 = int.parse(stdin.readLineSync().toString());

  if(n1 > n2 && n1 > n3){
    if(n2 > n3){
      print(n3.toString()+" "+n2.toString()+" "+n1.toString());
    }
    else{
      print(n2.toString()+" "+n3.toString()+" "+n1.toString());
    }
  }
  else{
    if(n2 > n3 && n2 > n1){
      if(n1 > n3){
        print(n3.toString()+" "+n1.toString()+" "+n2.toString());
      }
      else{
        print(n1.toString()+" "+n3.toString()+" "+n2.toString());
      }
    }
    else{
      if(n1 > n2){
        print(n2.toString()+" "+n1.toString()+" "+n3.toString());
      }
      else{
        print(n1.toString()+" "+n2.toString()+" "+n3.toString());
      }
    }
  }
}