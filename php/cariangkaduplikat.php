<?php
function findDuplicates($array) {
    $fk = array();
    for ($i = 0; $i < count($array); $i++) {
        if (isset($fk[$array[$i]])) {
            $fk[$array[$i]]++;
        } else {
            $fk[$array[$i]] = 1;
        }
    }
    $duplicates = array();
    foreach ($fk as $key => $count) {
        if ($count > 1) {
            $duplicates[] = $key;
        }
    }
    return $duplicates;
}

$array = [790, 483, 281, 224, 483, 60, 698, 483, 790, 168];
$duplicates = findDuplicates($array);
echo "Angka yang muncul lebih dari satu kali: ";
print_r($duplicates);
?>
