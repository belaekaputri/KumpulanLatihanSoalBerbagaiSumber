public class Grow{
    public static void main(String[] args) {
          int [] no= {5,5};
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