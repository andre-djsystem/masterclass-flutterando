String CalcularIMC(double peso, double altura){
  final double imc = peso /(altura * altura);
  switch (imc) {
    case <= 18.5: return 'Magreza $imc';
    case <= 24.9: return 'Normal $imc';
    case <= 29.9: return 'Sobrepeso $imc';
    case <= 39.9: return 'Obesidade $imc';
    case > 40: return 'Obesidade Grave $imc';
        
    default: return 'Não definido';
  }
}

main(){
  print(CalcularIMC(50,1.7));
  print(CalcularIMC(60,1.7));  
  print(CalcularIMC(80,1.7));
  print(CalcularIMC(100,1.7));
  print(CalcularIMC(120,1.7));  
 }