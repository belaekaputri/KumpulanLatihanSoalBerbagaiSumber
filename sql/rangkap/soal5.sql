/*query sql untuk menampilkan mata kuliah yang mempunyai rata2 nilai mahasiswa diatas 75 >75*/


select tmahasiswa.NamaMahasiswa,tmatakuliah.NamaMatakuliah,tNilai.grade from tnilai inner join tmahasiswa ON tmahasiswa.NIRM= tnilai.NIRM INNER JOIN tmatakuliah ON tnilai.KodeMK=tmatakuliah.KodeMK 
where (select avg(tnilai.grade) >75);

/*chatgpt*/
SELECT tmatakuliah.KodeMK, tmatakuliah.NamaMatakuliah, AVG(tnilai.Grade) AS RataRataNilai FROM tnilai INNER JOIN tmatakuliah ON tnilai.KodeMK = tmatakuliah.KodeMK GROUP BY tmatakuliah.KodeMK, tmatakuliah.NamaMatakuliah HAVING AVG(tnilai.Grade) > 75;