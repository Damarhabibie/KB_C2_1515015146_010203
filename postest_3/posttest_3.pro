nowarnings

%	DAMAR SANGGARA HABIBIE
%	1515015146
%	PRAKTIKUM KB C2 2015
%	Tugas Posttest 3 modul 3 

predicates

	nondeterm mengambil(symbol,symbol,symbol)
	nondeterm matakuliah(symbol)
	
clauses

	mengambil("Irfan","IntelejensiBuatan","A").
	mengambil("Komeng","IntelejensiBuatan","D").
	mengambil("Dati","IntelejensiBuatan","C").
	mengambil("Fatima","IntelejensiBuatan","B").
	mengambil("Maspion","IntelejensiBuatan","C").
	
	mengambil("Ricky","PDE","E").
	mengambil("Embang","PDE","A").
	mengambil("Salmin","PDE","D").
	mengambil("Vina","PDE","B").
	mengambil("Sondang","PDE","C").
	
	mengambil("Pamuji","SistemOperasi","D").
	mengambil("Luki","SistemOperasi","E").
	mengambil("Sadek","SistemOperasi","B").
	mengambil("Yusida","SistemOperasi","A").
	mengambil("Eka","SistemOperasi","A").
	
	matakuliah("IntelenjesiBuatan").
	matakuliah("PDE").
	matakuliah("SistemOperasi").
	
goal

	mengambil(NamaMahasiswa,"IntelejensiBuatan",_);	
	
	mengambil(Nama,TidakLulus,"D");
	mengambil(Nama,TidakLulus,"E");
	
	mengambil(Nama,Lulus,"A");
	mengambil(Nama,Lulus,"B");
	mengambil(Nama,Lulus,"C");
	
	matakuliah(MataKuliah);
	
	mengambil(NamaMahasiswa,_,_).
	