//https://www.asciitable.com/
import 'dart:math';

String GenerateKey(int len){
  final rand = Random();
  String result = '';
  
  for(var i = 0; i < len; i++){
    result = result + String.fromCharCode(rand.nextInt(25) + 65);
  }
  
  return result;
}
String VigenereCrypt(String key, String str, [bool decode = false]){
  
  final strUpper = str.toUpperCase();
  String strEncode = '';
  
  if (decode){
    for (var i = 0; i < strUpper.length; i++) {
      if(strUpper.runes.elementAt(i) >= 65 && strUpper.runes.elementAt(i) <= 90){
        int soma = (strUpper.runes.elementAt(i)-key.runes.elementAt(i));
        int resto = soma % 26;        
        strEncode = strEncode + String.fromCharCode(65+resto);
      } else {
        strEncode = strEncode + strUpper[i];
      }
    }    
  }else{
    for (var i = 0; i < strUpper.length; i++) {
      if(strUpper.runes.elementAt(i) >= 65 && strUpper.runes.elementAt(i) <= 90){
        int soma = (strUpper.runes.elementAt(i)+key.runes.elementAt(i));
        int resto = soma % 26;
        strEncode = strEncode + String.fromCharCode(65+resto);
      } else {
        strEncode = strEncode + strUpper[i];
      }
    }
  }

  return strEncode;
}

main(){
  String str = 'Texto a ser encriptado';
  print(str);
  String key = GenerateKey(str.length);
  print(key);
  String encoded = VigenereCrypt(key, str);
  print(encoded);
  String decoded = VigenereCrypt(key, encoded, true);
  print(decoded);  
}