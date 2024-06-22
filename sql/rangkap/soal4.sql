/*buatlah query untuk menampikan rata rata nilai mahasiswa untuk setiap mata kuliah yang ada*/


select tmahasiswa.NamaMahasiswa,tmatakuliah.NamaMatakuliah, avg(tNilai.grade) AS "Rata-Rata Nilai" from tnilai inner join tmahasiswa ON tmahasiswa.NIRM= tnilai.NIRM INNER JOIN tmatakuliah ON tnilai.KodeMK=tmatakuliah.KodeMK GROUP BY tmatakuliah.KodeMK;

/*chatgpt*/
SELECT tmatakuliah.KodeMK, tmatakuliah.NamaMatakuliah, AVG(tnilai.Grade) AS RataRataNilai FROM tnilai JOIN tmatakuliah ON tnilai.KodeMK = tmatakuliah.KodeMK GROUP BY tmatakuliah.KodeMK, tmatakuliah.NamaMatakuliah;
