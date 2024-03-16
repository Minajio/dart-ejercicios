void main(){
  int ano = 1980;
  double ciudadA = 3500000;
  double ciudadB = 5000000;
  while(ciudadB > ciudadA){
    ciudadA += ciudadA*(0.15);
    ciudadB += ciudadB*(0.07);
    ano++;
  }
  print(ano);
}