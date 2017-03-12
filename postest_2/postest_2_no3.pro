PREDICATES

PREDICATES
	nondeterm kakek(STRING,STRING)
	nondeterm ayah(STRING,STRING)
	nondeterm ibu(STRING,STRING)
	nondeterm pria(STRING)
	nondeterm wanita(STRING)
	nondeterm istri(STRING,STRING)
	nondeterm anak(STRING,STRING)
	nondeterm adik(STRING,STRING)
	nondeterm cucu(STRING,STRING)
	nondeterm usia(STRING,INTEGER)
	

CLAUSES
	anak("Jhon","James"). 			% jhon adalah anak james
	anak("James","Peter"). 			% james adalah anak peter
	anak("Sue","Ann"). 			% sue adalah anak ann
	istri("Mary","Peter"). 			% mary adalah istri peter
	istri("Ann","James"). 			% ann adalah istri james
	pria("Jhon"). 				% pria bernama Jhon
	pria("James").				% pria bernama James
	pria("Peter").				% pria bernama Peter
	wanita("Mary").				% wanita bernama Mary
	wanita("Sue").				% wanita bernama Sue
	wanita("Ann").				% wanita bernama Ann
	usia("Jhon",10).			% Jhon berusia 10
	usia("Sue",13).				% Sue berusia 13
 
ayah(A,B):-anak(B,A).				% A ayah dari B jika B putra dari A
kakek(A,B):-ayah(A,C), ayah(C,B).		% A kakek dari B jika A ayah dari C dan C ayah dari B
ibu(A,B):-istri(B,C), anak(A,C).		% A ibu dari B jika B istri dari C dan A anak dari C
cucu(A,B):-anak(A,C), anak(C,B).		% A cucu dari B jika A anak dari C dan C anak dari B
cucu(A,B):-anak(A,C), istri(C,D), anak(D,B).	% A cucu dari B jika A anak dari C dan C istri dari D dan D anak dari B
adik(A,B):-usia(A,C), usia(B,D), C<D.		% A adik dari B jika A berusia C dan B berusia D dan C lebih kecil dari D
 

GOAL
cucu(A,B); 	% ada 2 solusi, yaitu jhon dan sue merupakan cucu peter
ibu(A,B);	% ada 2 solusi, yaitu james ibunya adalah mary, dan jhon ibunya adalah ann.
adik(A,B);	% berdasarkan clause menghasilkan bahwa jhon adalah adik sue, karena ann dan james adalah suami istri dan usia jhon lebih kecil dari sue.
kakek(A,B);	% berdasarkan clause bahwa peter adalah kakek dari jhon
usia(A,10).	% menghasilkan yang berusia 10 adalah jhon
