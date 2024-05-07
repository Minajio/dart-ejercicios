void main(){
  Libro libro1 = new Libro("Libro1", Persona("Andres", 18), "1234-56-789", 312, "Edicion 1", "SENA", "Calle 20", Fecha(2024, 5, 3));
  libro1.mostrarInfo();
}

class Persona{
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);
}

class Fecha{
  int ano;
  int mes;
  int dia;

  Fecha(this.ano, this.mes, this.dia);
}

class Libro{
  String titulo;
  Persona autor;
  String ISBN;
  int paginas;
  String edicion;
  String editorial;
  String lugar;
  Fecha fecha;

  Libro(this.titulo, this.autor, this.ISBN, this.paginas, this.edicion, this.editorial, this.lugar, this.fecha);

  void mostrarInfo(){
    print("Titulo: "+titulo+"\nAutor: "+autor.nombre+" - Edad: "+autor.edad.toString()+"\nISBN: "+ISBN+"\nPaginas: "+paginas.toString()+"\nEdicion: "+edicion+"\nEditorial: "+editorial+"\nLugar: "+lugar+"\nFecha de edicion: "+(fecha.dia < 10 ? "0"+fecha.dia.toString() : fecha.dia.toString())+"/"+(fecha.mes < 10 ? "0"+fecha.mes.toString() : fecha.mes.toString())+"/"+fecha.ano.toString());
  }
}