import "dart:io";

void main(){

}

class Multimedia{
  String titulo;
  String autor;
  String formato;
  String duracion;

  Multimedia(this.titulo, this.autor, this.formato, this.duracion){
    if(formato != "wav" || formato != "mp3" || formato != "midi" || formato != "avi" || formato != "mov" || formato != "mpg" || formato != "cdAudio" || formato != "dvd"){
      print("Formato ingresado invalido, se estableció a mp3");
      formato = "mp3";
    }
  }

  String getTitulo(){
    return titulo;
  }

  String getAutor(){
    return autor;
  }

  String getFormato(){
    return formato;
  }

  String getDuracion(){
    return duracion;
  }

  String toString(){
    return "Titulo: "+titulo+", Autor: "+autor+", Formato: "+formato+", Duracion: "+duracion;
  }

  bool equals(Multimedia objeto){
    if(titulo == objeto.titulo && autor == objeto.autor){
      return true;
    }
    else{
      return false;
    }
  }
}