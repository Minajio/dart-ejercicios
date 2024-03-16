import "dart:io";

void main(){
  const String usuario = "user";
  const String password = "pass";
  int intentos = 3;

  print("Ingrese su usuario");
  while(usuario != stdin.readLineSync().toString()){
    print("Ese usuario no existe, intentelo de nuevo");
  }
  print("Ingrese su contrasena");
  while(intentos != 0 && password != stdin.readLineSync().toString()){
    intentos--;
    print("Contrasena incorrecta, le quedan "+intentos.toString()+" intentos");
  }
  
  if(intentos > 0){
    print("Bienvenido "+usuario);
  }
  else{
    print("Ha excedido la cantidad de intentos, acceso denegado");
  }
}