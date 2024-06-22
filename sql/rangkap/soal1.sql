/* query menampilkan nama mahasiswa,matakuliah yang diambil beserta grade yang didapat oleh mahasiswa
tersebut, namun hanya mahasiswa yang usianya lebih dari 25 tahun dan gradenya dibawah 60 */

select tmahasiswa.NamaMahasiswa,tmatakuliah.NamaMatakuliah,tNilai.grade from tnilai inner join tmahasiswa ON tmahasiswa.NIRM= tnilai.NIRM INNER JOIN tmatakuliah ON tnilai.KodeMK=tmatakuliah.KodeMK 
where (select (YEAR(CURDATE())-YEAR(TglLahir)) >25) and tnilai.grade <60


/* dari chat gpt*/
SELECT tmahasiswa.NamaMahasiswa, tmatakuliah.NamaMatakuliah, tnilai.Grade FROM tmahasiswa JOIN tnilai ON tmahasiswa.NIRM = tnilai.NIRM JOIN tmatakuliah ON tnilai.KodeMK = tmatakuliah.KodeMK WHERE TIMESTAMPDIFF(YEAR, tmahasiswa.TglLahir, CURDATE()) > 25 AND tnilai.Grade < 60;