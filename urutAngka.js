let number= [3,7,1,2,6,7,8,9,12,5,3,12];
const urutnumber=(a,b)=>{
    return a-b;
};
const sorting=number.sort(urutnumber);
console.log(sorting);//ASC
/*cara cepat
number.sort((a,b)=>a-b);//ASC
console.log(anumber);
*/

//atau
number.sort((a,b)=>b-a);//DESC
console.log(anumber);