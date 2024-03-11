public class BubbleSort {
    //YOUTUBE studywithstudent
    public static void main(String[] args){
        int nilai[] ={99,76,87,69,80};
        bubbleSortASC(nilai);
    }
    public static void bubbleSortASC(int[] bilangan){
        System.out.println("SEBELUM");
        System.out.println("=======");
        for(int bil : bilangan){
            System.out.print(bil+",");
           
        }
        System.out.println("\n");
        for(int i=0;i<bilangan.length;i++){
            for(int j=0; j<bilangan.length-1;j++){
                //bila nilai saat ini lebih besar dari pada nilai selanjutnya
                  if(bilangan[j]>bilangan[j+1]){
                    int tampungan = bilangan[j];
                    bilangan[j]= bilangan[j+1];
                    bilangan[j+1]=tampungan;

                  }
            }
        }

        System.out.println("SESUDAH");
        System.out.println("=======");
        for(int bil : bilangan){
            System.out.print(bil+", ");
        }
    }
}
