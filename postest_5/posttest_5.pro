predicates

	nondeterm merk(symbol,symbol)
	nondeterm jenis(symbol)
	
clauses

	merk("swallow","Sandal").
	
	merk("Adidias","Sepatu").
	merk("Machbeth","Sepatu").
	
	merk("Nike","Sepatu").
	merk("homyped","Sandal").
	merk("ardilles","Sandal").
	
	merk("carvil","Sandal").
	merk("eiger","Sandal").
	
	merk("Puma","Sepatu").
	merk("Reebok","Sepatu").
	
	jenis("Sandal").
	jenis("Sepatu").
	
goal

	jenis(Jenis);
	merk(NamaMerk,"Sandal");	%menampilkan hanya merk sandal	
	merk(NamaMerk,"Sepatu").	%menampilkan hanya merk sepatu
	
	