import "dart:io";

void main(){
  Map<int, Map> clientes = {
    1001: {
      "nombre": "Andres",
      "direccion": "calle 1",
      "telefono": "3333",
      "correo": "andres@gmail.com",
      "preferente": true
    },
    1002: {
      "nombre": "Rodrigo",
      "direccion": "calle 2",
      "telefono": "4444",
      "correo": "rodrigo@gmail.com",
      "preferente": false
    },
    1003: {
      "nombre": "Albeiro",
      "direccion": "calle 3",
      "telefono": "5555",
      "correo": "albeiro@gmail.com",
      "preferente": true
    }
  };

  while(true){
    print("Que desea hacer?");
    print("1. Anadir cliente\n2. Eliminar cliente\n3. Mostrar cliente\n4. Listar todos los clientes\n5. Listar clientes preferentes\n6. Cerrar programa");
    int opcion = int.parse(stdin.readLineSync().toString());
    if(opcion == 1){
      print("Ingrese el NIF del cliente:");
      int clienteTemp = int.parse(stdin.readLineSync().toString());
      Map<String, dynamic> mapaTemporal = {
        "nombre": "",
        "direccion": "",
        "telefono": "",
        "correo": "",
        "preferente": false
      };
      print("Ingrese los siguientes datos del cliente:");
      mapaTemporal.keys.forEach((element) {
        if(element != "preferente"){
          print(element);
          mapaTemporal[element] = stdin.readLineSync().toString();
        }
      });
      print("preferente:");
      mapaTemporal["preferente"] = bool.parse(stdin.readLineSync().toString());
      clientes[clienteTemp] = mapaTemporal;
    }
    else if(opcion == 2){
      print("Ingrese el NIF de un cliente para eliminar:");
      int clienteTemp = int.parse(stdin.readLineSync().toString());
      bool encontrado = false;
      clientes.keys.forEach((element) {
        if(clienteTemp == element){
          encontrado = true;
        }
      });
      if(encontrado){
        clientes.remove(clienteTemp);
        print("Cliente eliminado con exito");
      }
      else{
        print("No se ha encontrado el cliente en la base de datos");
      }
    }
    else if(opcion == 3){
      print("Ingrese el NIF de un cliente para eliminar:");
      int clienteTemp = int.parse(stdin.readLineSync().toString());
      bool encontrado = false;
      clientes.keys.forEach((element) {
        if(clienteTemp == element){
          encontrado = true;
        }
      });
      if(encontrado){
        print(clienteTemp);
        clientes[clienteTemp]!.forEach((key, value) => print(key+": "+value.toString()));
      }
      else{
        print("No se ha encontrado el cliente en la base de datos");
      }
    }
    else if(opcion == 4){
      clientes.forEach((key, value) {
        print(key);
        value.forEach((key2, value2) {
          print(key2+": "+value2.toString());
        });
      });
    }
    else if(opcion == 5){
      clientes.forEach((key, value) {
        if(value["preferente"] == true){
          print(value);
          clientes[value]?.forEach((key, value) {
            print(key+": "+value.toString());
          });
        }
      });
    }
    else if(opcion == 6){
      print("Cerrando programa...");
    }
    else{
      print("Opcion invalida!");
    }
  }
}