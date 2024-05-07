void main(){
  final cafetera = new Cafetera(1000, 0);
  cafetera.agregarCafe(700);
  cafetera.servirCafe(500);
  cafetera.vaciarCafetera();
  cafetera.servirCafe(100);
}

class Cafetera{
  int capacidadMaxima;
  int capacidadActual;

  Cafetera(this.capacidadMaxima, this.capacidadActual);

  void vaciarCafetera(){
    capacidadActual = 0;
    print("se vació la cafetera");
  }

  void agregarCafe(int cafe){
    capacidadActual+=cafe;
    if(capacidadActual > capacidadMaxima){
      capacidadActual-=(capacidadActual - capacidadMaxima);
    }
    print("La cafetera tiene "+capacidadActual.toString()+"ml de cafe");
  }

  void servirCafe(int cantidad){
    int cantidadTemp = cantidad;
    capacidadActual-=cantidadTemp;
    if(capacidadActual < 0){
      cantidadTemp+=capacidadActual;
      capacidadActual-=capacidadActual;
      print("Se sirvieron "+cantidadTemp.toString()+"ml de cafe, no alcanzó el cafe en la cafetera");
    }
    else{
      print("Se sirvieron "+cantidadTemp.toString()+"ml de cafe");
    }
  }
}