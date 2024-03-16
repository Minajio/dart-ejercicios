import "dart:io";

void main(){
  print("Ingrese el numero de hombres");
  int hombres = int.parse(stdin.readLineSync().toString());
  print("Ingrese el numero de mujeres");
  int mujeres = int.parse(stdin.readLineSync().toString());
  if(hombres > mujeres){
    print("Hay mas hombres que mujeres:\nTotal: "+(hombres+mujeres).toString()+"(100%)");
    print("Hombres: "+hombres.toString()+"("+((hombres/(hombres+mujeres))*100).toString()+"%)");
    print("Mujeres: "+mujeres.toString()+"("+((mujeres/(hombres+mujeres))*100).toString()+"%)");
  }
  else if(mujeres > hombres){
    print("Hay mas mujeres que hombres:\nTotal: "+(hombres+mujeres).toString()+"(100%)");
    print("Hombres: "+hombres.toString()+"("+((hombres/(hombres+mujeres))*100).toString()+"%)");
    print("Mujeres: "+mujeres.toString()+"("+((mujeres/(hombres+mujeres))*100).toString()+"%)");
  }
  else{
    print("Hay la misma cantidad de hombres y mujeres:\nTotal: "+(hombres+mujeres).toString()+"(100%)");
    print("Hombres: "+hombres.toString()+"("+((hombres/(hombres+mujeres))*100).toString()+"%)");
    print("Mujeres: "+mujeres.toString()+"("+((mujeres/(hombres+mujeres))*100).toString()+"%)");
  }
}