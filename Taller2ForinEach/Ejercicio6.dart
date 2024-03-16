import "dart:io";

void main(){
  Map<String, String> informacion = {"nombre":"", "edad":"", "telefono":"", "sexo":"", "peso":""};
  informacion.keys.forEach((element) {
    print("Ingrese su "+element);
    informacion[element] = stdin.readLineSync().toString();
    informacion.forEach((key, value) => print(key+": "+value));
  });
}