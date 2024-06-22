/* query sql untuk menampilkan semua data mata kuliah yang tidak diambil oleh mahasiswa sama sekali */
select tmatakuliah.KodeMK, tmatakuliah.NamaMatakuliah,tmatakuliah.Pengajar from tmatakuliah left join tnilai on tmatakuliah.KodeMK = tnilai.KodeMK left join tmahasiswa on tnilai.NIRM=tmahasiswa.NIRM WHERE tnilai.KodeMK is null and tnilai.NIRM is null;


/*chatgpt*/
SELECT tmatakuliah.KodeMK, tmatakuliah.NamaMatakuliah, tmatakuliah.Pengajar FROM tmatakuliah LEFT JOIN tnilai ON tmatakuliah.KodeMK = tnilai.KodeMK WHERE tnilai.KodeMK IS NULL;