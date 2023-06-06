double RegraDe3({double? grupo11, double? grupo12, double? grupo21, double? grupo22}){

  if(grupo11 == null){
    return (grupo12! * grupo21!)/grupo22!;
  }
  
  if(grupo12 == null){
    return (grupo11! * grupo22!)/grupo21!;
  }  
  
  if(grupo21 == null){
    return (grupo11! * grupo22!)/grupo12!;
  } 
  
  if(grupo22 == null){
    return (grupo21! * grupo12!)/grupo11!;
  }   
  
  return 0.0;
}

main(){
  print(RegraDe3(grupo12: 10, grupo21: 5, grupo22: 20));
  print(RegraDe3(grupo11: 10, grupo21: 5, grupo22: 20));
  print(RegraDe3(grupo11: 10, grupo12: 5, grupo22: 20));
  print(RegraDe3(grupo11: 10, grupo12: 5, grupo21: 20));  
}
