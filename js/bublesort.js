//descendin
function terbersar(angka){
   
    for(let i=0; i<=angka.length;i++){
        for(let j=0; j<=angka.length;j++){
            if(angka[j]<angka[j+1]){
              let tampung=angka[j];
               angka[j]=angka[j+1];
               angka[j+1]=tampung;
            }
        }
    }
    return angka;
}

let b=[3,5,6,2,1];

console.log(terbersar(b));



///ascending
function terkecil(angka){
   
    for(let i=0; i<=angka.length;i++){
        for(let j=0; j<=angka.length;j++){
            if(angka[j]>angka[j+1]){
              let tampung=angka[j];
               angka[j]=angka[j+1];
               angka[j+1]=tampung;
            }
        }
    }
    return angka;
}

let a=[3,5,6,2,1];

console.log(terbersar(a));