void main(){
  Map<String, int> asignaturas = {"Matematicas":6, "Fisica":4, "Quimica":5};

  print("Asignaturas y sus creditos:\n");
  asignaturas.forEach((key, value) => print(key+": "+value.toString()));

  int total = 0;
  asignaturas.values.forEach((element) => total+=element);
  print("\nTotal de creditos: "+total.toString());
}