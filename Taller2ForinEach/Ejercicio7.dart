import "dart:io";

void main(){
  Map<String, double> cesta = {};
  String nombre;
  double precio;

  print("Para dejar de agregar objetos a la cesta ingrese 0 en el nombre y el precio");
  do{
    print("Ingrese el nombre del articulo:");
    nombre = stdin.readLineSync().toString();
    print("Ingrese el precio del articulo:");
    precio = double.parse(stdin.readLineSync().toString());
    if(nombre != "0" && precio != 0){
      cesta[nombre] = precio;
    }
  }while(nombre != "0" && precio != 0);

  double precioTotal = 0;
  cesta.forEach((key, value) {
    print(key+": "+value.toString());
    precioTotal+=value;
  });
  print("Total: "+precioTotal.toString());
}