
/*given an array of integers, keep a total score
on the following:
1. add 1 point for every even(genap) number in the array
2. add 3 points for every odd(ganjil) number in the array
3. add 5 points for every time you encounter a 5 in the
array.

if an empty or null array is passed to the function return 0
examples:
input:[1,2,3,4,5]
output: 13
input:[17,19,21]
output:9
input:[5,5,5]
output:15 
 */

public class Sum {
    public static void main(String[] args){
        int nilai[] ={1,2,3,4,5};
        int nilai2[] ={17, 19, 21};
        int nilai3[] ={5, 5, 5};
        int nilai4[]={1,2};
        System.out.println(sumNumber(nilai));
        System.out.println(sumNumber(nilai2));
        System.out.println(sumNumber(nilai3));
        System.out.println(sumNumber(nilai4));
    }
    static int  sumNumber(int[] bilangan){
        int total=0;
        for(int i=0;i<bilangan.length;i++){
            if (bilangan[i]==5){
              total+=5;
            }else if(bilangan[i]%2==0){
              total+=1;
            }
            else if(bilangan[i]%2==1){
            total+=3;
            }  
        }
     return total;
    }
}

