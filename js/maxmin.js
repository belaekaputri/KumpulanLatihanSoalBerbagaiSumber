var min = function(list){
    
    let max=list[0];
  for(let i=0; i<=list.length;i++){
    if(max>list[i]){
      max=list[i];
    }
  }
  return max;
}

var max = function(list){
    
       let max=list[0];
  for(let i=0; i<=list.length;i++){
    if(max<list[i]){
      max=list[i];
    }
  }
  return max;
}