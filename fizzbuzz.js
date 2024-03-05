/* Soal 
menampilkan bilangan 
- jika dapat dibagi 3 maka FIZZ
- jika dapat dibagi 5 maka BUZZ
- jika dapat dibagi 3 dan 5 maka FIZZBUZZ
- selain itu tampilkan angka.
*/ 
for (let i = 1; i <= 100; i++){
    if(i % 3 == 0 && i % 5 ==0){
       console.log("FizzBuzz");
    }
    else if(i % 3 == 0){
       console.log("Fizz");
    }
    else if(i % 5 == 0){
        console.log("Buzz");
    }
    else {
       console.log(i);
    }
  }