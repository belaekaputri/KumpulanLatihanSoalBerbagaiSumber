/*query sql untuk menampilkan mata kuliah yang mempunyai jumlah terbanyak*/
select tmatakuliah.NamaMatakuliah from tnilai inner join tmahasiswa ON tmahasiswa.NIRM= tnilai.NIRM INNER JOIN tmatakuliah ON tnilai.KodeMK=tmatakuliah.KodeMK HAVING MAX(tnilai.NIRM);
/* jawaban diatas kayak salah :D */


/* jawaban dibawah dari chatqpt*/
select tmatakuliah.NamaMatakuliah, count(tnilai.NIRM) as "jumlah siswa" from tnilai inner join tmahasiswa ON tmahasiswa.NIRM= tnilai.NIRM INNER JOIN tmatakuliah ON tnilai.KodeMK=tmatakuliah.KodeMK group by tnilai.KodeMK limit 1;