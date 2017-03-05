PREDICATES

ayah(STRING,STRING)
putra(STRING,STRING)
kakek(STRING,STRING)
cucu(STRING,STRING)
buyut(STRING,STRING)
cicit(STRING,STRING)

CLAUSES
		
putra("fikri","indra").		%fikri putra dari indra
putra("indra","memen").		%indra putra dari memen
putra("memen","ferry").		%memen putra dari ferry
putra("ferry","doni").		%ferry putra dari doni
putra("doni","gino"). 		%doni putra dari gino

ayah(A,B):-putra(B,A).						%A ayah dari B jika B putra dari A
kakek(A,B):-ayah(A,C), ayah(C,B).				%A kakek dari B jika A ayah dari C dan C ayah dari B
buyut(A,B):-kakek(A,C),ayah(C,B),ayah(A,D),kakek(D,B).		%A kakekbuyut dari B jika A kakek dari C dan C ayah dari B dan A ayah dari D dan D kakek dari B 
cucu(A,B):-putra(A,C), ayah(B,C).				%A cucu dari B jika A putra dari C dan B ayah dari C
cicit(A,B):-cucu(A,C),ayah(B,C),kakek(B,D),ayah(C,D).		%A cicit dari B jika A cucu dari C dan B ayah dari C dan B kakek dari D dan C ayah dari D

goal
cicit("indra",Buyut),nl.	%mencari buyut dari indra
