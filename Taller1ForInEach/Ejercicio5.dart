import "dart:io";

void main(){
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> numeros2 = [];

  numeros.forEach((element) => numeros2.insert(0, element));
  numeros2.forEach((element) => stdout.write(element.toString()+(element == 1 ? "" : ", ")));
}