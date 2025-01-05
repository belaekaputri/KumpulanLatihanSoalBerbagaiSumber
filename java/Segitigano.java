package java;

public class Segitigano {
    public static void main(String[] args) {
    for(int i=1; i<=5; i++){
      for(int j=1; j<=i; j++){
        System.out.print(j);
        System.out.print(" ");
      }
      System.out.println();
    }
    

    for(int i=1; i<=5; i++){
        for(int j=1; j<=i; j++){
            System.out.print(j);
            if(j<i){
                System.out.print(" + ");
            }
           
        }
        System.out.println();
    }


    for(int i=1; i<=5; i++){
        int tampung=0;
        for(int j=1; j<=i; j++){
            
            tampung +=j;
            System.out.print(j);
            if(j<i){
                System.out.print(" + ");
            }
            if(j==i){
                System.out.print(" = ");
                System.out.print(tampung);
            }
            
        }
        System.out.println();
    }


}
}
    

