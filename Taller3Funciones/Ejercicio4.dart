import "dart:io";

void main(){
  print("Ingrese un numero:");
  int num = int.parse(stdin.readLineSync().toString());
  print("Ingrese una posicion:");
  int pos = int.parse(stdin.readLineSync().toString());

  if(pos > 0){
    print(num.toString()+" en posicion "+pos.toString()+": "+numPos(num, pos).toString());
  }
  else{
    print("No puede ingresar una posicion menor a 1");
  }
}

int numPos(int num, int pos){
  List<int> temp = [];
  int numTemp = num;
  while(numTemp != 0){
    temp.insert(0, numTemp%10);
    numTemp~/=10;
  }
  return temp[pos - 1];
}