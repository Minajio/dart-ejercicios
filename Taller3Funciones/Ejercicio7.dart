import "dart:io";

void main(){
  print("Ingrese una cadena de texto");
  String cadena = stdin.readLineSync().toString();
  vocales(cadena);
}

void vocales(String cadena){
  int a = 0;
  int e = 0;
  int i = 0;
  int o = 0;
  int u = 0;

  for(int i = 0; i < cadena.length; i++){
    if(cadena[i] == "a"){
      a++;
    }
    if(cadena[i] == "e"){
      e++;
    }
    if(cadena[i] == "i"){
      i++;
    }
    if(cadena[i] == "o"){
      o++;
    }
    if(cadena[i] == "u"){
      u++;
    }
  }
  print("Vocales en la cadena:");
  print("a: "+a.toString());
  print("e: "+e.toString());
  print("i: "+i.toString());
  print("o: "+o.toString());
  print("u: "+u.toString());
}