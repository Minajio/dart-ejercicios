import "dart:io";
import "dart:math";

void main(){
  print("Calculadora:");
  while(true){
    print("Elija la opcion que desee:");
    print("1. Suma\n2. Resta\n3. Multiplicacion\n4. Division\n5. Potenciacion\n6. Raiz cuadrada\n7. Salir");
    int opcion = int.parse(stdin.readLineSync().toString());
    if(opcion == 1){
      print("Ingrese el primer numero");
      double n1 = double.parse(stdin.readLineSync().toString());
      print("Ingrese el segundo numero");
      double n2 = double.parse(stdin.readLineSync().toString());
      print("Resultado: "+suma(n1, n2).toString());
    }
    else if(opcion == 2){
      print("Ingrese el primer numero");
      double n1 = double.parse(stdin.readLineSync().toString());
      print("Ingrese el segundo numero");
      double n2 = double.parse(stdin.readLineSync().toString());
      print("Resultado: "+resta(n1, n2).toString());
    }
    else if(opcion == 3){
      print("Ingrese el primer numero");
      double n1 = double.parse(stdin.readLineSync().toString());
      print("Ingrese el segundo numero");
      double n2 = double.parse(stdin.readLineSync().toString());
      print("Resultado: "+multiplicacion(n1, n2).toString());
    }
    else if(opcion == 4){
      print("Ingrese el primer numero");
      double n1 = double.parse(stdin.readLineSync().toString());
      print("Ingrese el segundo numero");
      double n2 = double.parse(stdin.readLineSync().toString());
      print("Resultado: "+division(n1, n2).toString());
    }
    else if(opcion == 5){
      print("Ingrese el primer numero");
      double n1 = double.parse(stdin.readLineSync().toString());
      print("Ingrese el segundo numero");
      double n2 = double.parse(stdin.readLineSync().toString());
      print("Resultado: "+potencia(n1, n2).toString());
    }
    else if(opcion == 6){
      print("Ingrese el numero");
      double n = double.parse(stdin.readLineSync().toString());
      print("Resultado: "+raiz(n).toString());
    }
    else if(opcion == 7){
      print("Saliendo...");
      break;
    }
    else{
      print("Opcion invalida");
    }
  }
}

double suma(double n1, double n2){
  return n1 + n2;
}
double resta(double n1, double n2){
  return n1 - n2;
}
double multiplicacion(double n1, double n2){
  return n1 * n2;
}
double division(double n1, double n2){
  return n1 / n2;
}
double potencia(double n1, double n2){
  return pow(n1, n2).toDouble();
}
double raiz(double n1){
  return sqrt(n1);
}