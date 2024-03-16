void main(){
  List<String> abecedario = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"];
  List<int> eliminar = [];

  int i = 0;
  abecedario.forEach((element) {
    if((i + 1)%3 == 0){
      eliminar.add(i);
    }
    i++;
  });

  eliminar.reversed.forEach((element) => abecedario.removeAt(element));

  print(abecedario);
}