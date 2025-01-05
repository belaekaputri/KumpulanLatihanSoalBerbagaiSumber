package java;

public class mencariNilaiTertinggi {
    


    public static void main(String[] args) {
        int[] arrayContoh = {3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5};
        System.out.println("Nilai terbesar dalam array adalah: " + nilaiTerbesar(arrayContoh));
    }

    public static int nilaiTerbesar(int[] array) {
        if (array.length == 0) {
            throw new IllegalArgumentException("Array tidak boleh kosong");
        }

        int terbesar = array[0];  // Inisialisasi nilai terbesar dengan elemen pertama array
        for (int i = 1; i < array.length; i++) {  // Mulai dari elemen kedua
            if (array[i] > terbesar) {
                terbesar = array[i];  // Update nilai terbesar jika ditemukan nilai yang lebih besar
            }
        }
        return terbesar;
    }

}