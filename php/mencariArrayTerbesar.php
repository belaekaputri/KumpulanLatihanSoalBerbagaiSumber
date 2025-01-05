<?php
function nilaiTerbesar($array) {
    if (count($array) == 0) {
        return null;  // Jika array kosong, kembalikan null
    }

    $terbesar = $array[0];  // Inisialisasi nilai terbesar dengan elemen pertama array
    for ($i = 1; $i < count($array); $i++) {
        if ($array[$i] > $terbesar) {
            $terbesar = $array[$i];  // Update nilai terbesar jika ditemukan nilai yang lebih besar
        }
    }
    return $terbesar;
}

// Contoh penggunaan
$arrayContoh = array(3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5);
echo "Nilai terbesar dalam array adalah: " . nilaiTerbesar($arrayContoh);
?>
