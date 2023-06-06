int fibonacci(int numeroEntrada){
  if (numeroEntrada < 2){
    return numeroEntrada;
  } else {
    return fibonacci(numeroEntrada-1)  + fibonacci(numeroEntrada - 2);
  }
}

main(){
  for (var i = 0; i < 30; i++) {
    print('$i - '+fibonacci(i).toString());
  }
 
}