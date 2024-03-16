void main(){
  Map<String, Map> clientes = {
    "01234567L": {
      "nombre": "Luis Gonzales",
      "email": "luisgonzales@mail.com",
      "telefono": "656343576",
      "descuento": 12.5
    },
    "71476342J": {
      "nombre": "Macarena Ramírez",
      "email":"macarena@mail.com",
      "teléfono": "692839321",
      "descuento": 8.0
    },
    "63823376M": {
      "nombre": "Juan José Martínez",
      "email":"juanjo@mail.com",
      "teléfono": "664888233",
      "descuento": 5.2
    },
    "318329456P": {
      "nombre": "Daniel Morales",
      "email":"danimorales@mail.com",
      "teléfono": "3102878332",
      "descuento": 2.8
    }
  };

  String cadenaClientes = "nif;nombre;email;telefono;descuento\n";
  int cont = 0;
  int cont2 = 0;

  clientes.keys.forEach((element) {
    cadenaClientes+=element+";";
    cont2 = 0;
    clientes[element]!.values.forEach((element2) {
      cadenaClientes+=element2.toString();
      if(cont2 != clientes[element]!.length - 1){
        cadenaClientes+=";";
      }
      cont2++;
    });
    if(cont != clientes.length - 1){
      cadenaClientes+="\n";
    }
    cont++;
  });

  print(cadenaClientes);
}