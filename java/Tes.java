/*PRE TEST Bank Daerah */

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author oke
 */
public class Tes {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       String nama="Kim Hanbin";
       int[] no={0,1,2,3};
       String no_ktp="1438729900000234";
       DateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd");
       String[] dateArray= dateFormat.format(new Date()).split("-");
       String ko="";
        try {
            ko=no_ktp.substring(no[nama.length()%4],no_ktp.length()/2);
        } catch (Exception e) {ko=no_ktp;}
        
        String de;
        try {
            de=nama.substring(nama.length()/4,nama.length()).toLowerCase()+"/";
        } catch (Exception e) {de=nama+"/";}
        String un=dateArray[2]+dateArray[1]+dateArray[0]+"#";
        String ix;
        int a=Integer.parseInt(dateArray[0]);
        int b=Integer.parseInt(dateArray[1]);
        int c=Integer.parseInt(dateArray[2]);
        if (a>b){
            ix=""+(a-b);
        }else if(a==b){
            ix=un.substring(0,2);
        }else{
            ix=""+(c*1);
                    
        }
        String kodeVerifikasi=(ko+de+un+ix).replace(" ", "");
        System.out.println(kodeVerifikasi);
        
        
        
        
        
    }
    
}

