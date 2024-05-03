import "dart:io";

void main(){
  final cancion = Cancion("cancion1", "autor1"); 
  print(cancion.dameTitulo());
  print(cancion.dameAutor());
  cancion.ponTitulo("cancion2");
  cancion.ponAutor("autor2");
  print(cancion.dameTitulo());
  print(cancion.dameAutor());
}

class Cancion{
  String titulo;
  String autor;

  Cancion(this.titulo, this.autor);

  String dameTitulo(){
    return titulo;
  }

  String dameAutor(){
    return autor;
  }

  void ponTitulo(String titulo){
    this.titulo = titulo;
  }
  
  void ponAutor(String autor){
    this.autor = autor;
  }
}