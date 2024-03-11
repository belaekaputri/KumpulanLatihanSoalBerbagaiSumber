/*
&copy; SOLOLEARN

Popsicles
You have a box of popsicles and you want to give them all away to a group of
brothers and sisters. If you have enough left in the box to give them each an even amount
you should go fot it! if not, they will fight over them and you should eat them yourself later.

Task
Given the number of siblings that you are giving of popsicles to, determine if you
can give them each an even amount or if you shouldn't mention the popsicles at all

Input Format
Two integer values, the first one repesent the number of siblings, and the second one
represents the number of popsicles that you have left in the box

Output Format
A string that you says 'give away' if you are giving them away, or 'eat the yourself' if you
will be eating them yourself

Sample Input
3 9

Sample output
give away

Explanation 
You can give the popsicles to the brothers and sisters because they would each
get the same amount,3


*/
import java.util.Scanner;

class popsicles{
    public static void main(String[]args){
        Scanner input= new Scanner(System.in);
        int siblings= input.nextInt();
        int popsicles=input.nextInt();
        String description;
        if (popsicles%siblings==0)
        {
          description= "give away";
        }else{
          description= "eat them yourself";
        }
        System.out.println(description);
    }
}