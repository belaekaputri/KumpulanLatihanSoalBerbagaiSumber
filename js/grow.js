function grow(x){
    let result =x[0];
    for(let i=1;i<x.length;i++){
        result*=x[i];
    }
    return result;
}
console.log(grow([2,2]));

const multi = (x) => x.reduce((acc,curr)=>acc*curr,1);
console.log(multi([2,2,3]));