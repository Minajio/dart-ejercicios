import "dart:io";

void main(){
  final cuentaEmpleado = new CuentaBancaria("1001", "1003928392", 10000, 1000000);
  cuentaEmpleado.mostrar();
  cuentaEmpleado.actualizarSaldo();
  print("\n");
  cuentaEmpleado.mostrar();
  cuentaEmpleado.ingresar(5000);
  print("\n");
  cuentaEmpleado.mostrar();
  cuentaEmpleado.retirar(2000);
  print("\n");
  cuentaEmpleado.mostrar();
}

class CuentaBancaria{
  String numCuenta;
  String documento;
  int saldo;
  int interesAnual;

  CuentaBancaria(this.numCuenta, this.documento, this.saldo, this.interesAnual);

  void actualizarSaldo(){
    saldo+=(interesAnual~/365);
    print("Se ingresó "+(interesAnual~/365).toString());
  }
  
  void ingresar(int cantidad){
    saldo+=cantidad;
    print("Se ingresó "+cantidad.toString());
  }

  void retirar(int cantidad){
    int cantidadTemp = cantidad;
    saldo-=cantidad;
    if(saldo < 0){
      cantidadTemp+=saldo;
      saldo-=saldo;
      print("Se retiró "+cantidadTemp.toString());
    }
    else{
      print("Se retiró "+cantidadTemp.toString());
    }
  }

  void mostrar(){
    print("Numero de cuenta: "+numCuenta+"\nDocumento: "+documento+"\nSaldo: "+saldo.toString()+"\nInteres anual: "+interesAnual.toString());
  }
}