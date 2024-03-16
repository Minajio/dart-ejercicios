import "dart:io";

void main(){
  Map<String, String> persona = {"Nombre":"", "Edad":"", "Direccion":"", "Telefono":""};

  print("Ingrese la siguiente informacion:");
  
  persona.keys.forEach((element){
    print(element+": ");
    persona[element] = stdin.readLineSync().toString();
  });

  print(persona["Nombre"].toString()+" tiene "+persona["Edad"].toString()+" anos, vive en "+persona["Direccion"].toString()+" y su numero de telefono es "+persona["Telefono"].toString());
}