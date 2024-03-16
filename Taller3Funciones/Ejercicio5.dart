import "dart:io";

void main(){
  print("Ingrese el primer numero:");
  int n1 = int.parse(stdin.readLineSync().toString());
  print("Ingrese el segundo numero:");
  int n2 = int.parse(stdin.readLineSync().toString());
  cubos(n1, n2);
}

void cubos(int n1, int n2){
  if(n1 == n2){
    print("No puede ingresar numeros iguales");
  }
  else if(n1 + 1 == n2 || n2 + 1 == n1){
    print("No hay numeros en la mitad");
  }
  else{
    if(n1 > n2){
      int temp = n1;
      n1 = n2;
      n2 = temp;
    }
    print("Cubos de los numeros entre "+n1.toString()+" y "+n2.toString());
    for(int i = n1 + 1; i < n2; i++){
      print(i.toString()+": "+(i*i*i).toString());
    }
  }
}