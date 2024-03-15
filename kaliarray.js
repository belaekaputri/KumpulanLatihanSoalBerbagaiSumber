/*mengkali array menjadi 2 berdasarkan indeksnya*/
function multi(arr){
    let num=[];
    for(let i=0; i<arr.length;i++){
        num.push(arr[i]*2);
    }
    return num;
}
console.log(multi([22,3,4]));

//menggunakan map
function double(arr){
    return arr.map(num=>{
       return num *2;
    });
}

console.log(double([2,3,4]));