void main(){
  final archivo1 = new Multimedia("Cancion", "Persona1", "mp3", "2:32");
  final archivo2 = new Multimedia("Cancion2", "Persona2", "asdasd", "1:30");
  final archivo3 = new Multimedia("Cancion", "Persona1", "wav", "3:02");
  print(archivo1.toString());
  print(archivo2.toString());
  print(archivo3.toString());

  print(archivo1.equals(archivo2));
  print(archivo1.equals(archivo3));
}

class Multimedia{
  String titulo;
  String autor;
  String formato;
  String duracion;

  Multimedia(this.titulo, this.autor, this.formato, this.duracion){
    if(formato != "wav" && formato != "mp3" && formato != "midi" && formato != "avi" && formato != "mov" && formato != "mpg" && formato != "cdAudio" && formato != "dvd"){
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