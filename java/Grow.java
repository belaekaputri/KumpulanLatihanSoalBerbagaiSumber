public class Grow{
      //youtube Web Programming Unpas
    public static void main(String[] args) {
          int[] no= {1,2,3};
          int hasil=multiplyNumber(no);
          System.out.println(hasil);
    }
     static int  multiplyNumber(int[] angka){
       int sum=angka[0];
       for(int i=1; i<=angka.length-1; i++){
        sum *= angka[i];
       }
       return sum;
           
    }
    }