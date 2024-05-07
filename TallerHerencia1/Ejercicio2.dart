void main(){

}

class Fecha{
  int ano;
  int mes;
  int dia;

  Fecha(this.ano, this.mes, this.dia);

  String toString(){
    return dia.toString()+"/"+mes.toString()+"/"+ano.toString();
  }
}

class Producto{
  Fecha fechaCaducidad;
  String numeroLote;
  
  Producto(this.fechaCaducidad, this.numeroLote);
}

class ProductoFresco extends Producto{
  Fecha fechaEnvasado;
  String paisOrigen;

  ProductoFresco(Fecha fechaCaducidad, String numeroLote, this.fechaEnvasado, this.paisOrigen):
  super(fechaCaducidad, numeroLote);
}

class ProductoRefrigerado extends ProductoFresco{
  String codigoSupervisionAlimentaria;
  int temperaturaRecomendada;

  ProductoRefrigerado(Fecha fechaCaducidad, String numeroLote, Fecha fechaEnvasado, String paisOrigen, this.codigoSupervisionAlimentaria, this.temperaturaRecomendada):
  super(fechaCaducidad, numeroLote, fechaEnvasado, paisOrigen);
}

class ProductoCongelado extends ProductoFresco{
  int temperaturaRecomendada;

  ProductoCongelado(Fecha fechaCaducidad, String numeroLote, Fecha fechaEnvasado, String paisOrigen, this.temperaturaRecomendada):
  super(fechaCaducidad, numeroLote, fechaEnvasado, paisOrigen);
}

class ProductoCongeladoAire extends ProductoCongelado{
  int porcentajeNitrogeno;
  int porcentajeOxigeno;
  int porcentajeDioxidoCarbono;
  int porcentajeVaporAgua;

  ProductoCongeladoAire(Fecha fechaCaducidad, String numeroLote, Fecha fechaEnvasado, String paisOrigen, int temperaturaRecomendada, this.porcentajeNitrogeno, this.porcentajeOxigeno, this.porcentajeDioxidoCarbono, this.porcentajeVaporAgua):
  super(fechaCaducidad, numeroLote, fechaEnvasado, paisOrigen, temperaturaRecomendada);
}

class ProductoCongeladoAgua extends ProductoCongelado{
  int gSalPorLAgua;

  ProductoCongeladoAgua(Fecha fechaCaducidad, String numeroLote, Fecha fechaEnvasado, String paisOrigen, int temperaturaRecomendada, this.gSalPorLAgua):
  super(fechaCaducidad, numeroLote, fechaEnvasado, paisOrigen, temperaturaRecomendada);
}

class ProductoCongeladoNitrogeno extends ProductoCongelado{
  String metodoCongelacion;
  String segundosEnNitrogeno;

  ProductoCongeladoNitrogeno(Fecha fechaCaducidad, String numeroLote, Fecha fechaEnvasado, String paisOrigen, int temperaturaRecomendada, this.metodoCongelacion, this.segundosEnNitrogeno):
  super(fechaCaducidad, numeroLote, fechaEnvasado, paisOrigen, temperaturaRecomendada);
}