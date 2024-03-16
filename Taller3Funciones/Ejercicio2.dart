void main(){
  print(numerosImpares(20, 0, 1));
}

int numerosImpares(int n, int total, int cont){
  if(cont <= n){
    if(cont % 2 != 0){
      print("ola");
      total+=cont;
      return numerosImpares(n, total, cont + 1);
    }
    else{
      return numerosImpares(n, total, cont + 1);
    }
  }
  else{
    return total;
  }
}