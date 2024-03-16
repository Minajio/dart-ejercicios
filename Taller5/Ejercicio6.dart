import "dart:io";

void main(){
  String contra = "";
  while(contra != "1234"){
    print("Ingrese su contrasena:");
    contra = stdin.readLineSync().toString();
  }
  print("Bienvenido");
}