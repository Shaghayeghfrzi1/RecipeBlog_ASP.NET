select * from Category
insert into Category(CategoryName) values('K�tt')
insert into Category(CategoryName) values('Kyckling')
insert into Category(CategoryName) values('Fisk')
insert into Category(CategoryName) values('Vegansk')
insert into Category(CategoryName) values('Pasta')

select * from Recipe
insert into Recipe (Title, Post, CreateDate, CategoryID) values('Falafel', 'Bl�tl�gg kik�rtorna i ca 1 liter vatten minst 12 timmar. H�ll av kik�rtorna och sk�lj. L�t rinna av i ett durkslag.  Skala och hacka l�k och vitl�k. Dela och k�rna ur chilin och sk�r i bitar. Mixa l�k, vitl�k, chili, persilja och hackad koriander sl�tt i en matberedare. L�gg i en bunke. Mixa kik�rterna till en grynig massa, tills�tt ev lite vatten. Mixa inte helt sl�tt. L�gg i bunken med mixade �rter och tills�tt spiskummin, koriander, salt och bikarbonat. Tills�tt ev lite vatten, smeten ska vara lite smulig och klibbig. Hetta upp oljan till ca 180�C i en kastrull. Tryck och forma till ca 16 bollar f�r hand (f�r 4 port), alternativt med hj�lp av en liten glasskopa eller tv� skedar. L�gg f�rsiktigt ner i oljan. Fritera i omg�ngar tills de �r gyllene ca 5 minuter. Lyft upp med en h�lslev. L�t rinna av p� lite hush�llspapper och servera direkt.','2020-01-23',4)
insert into Recipe (Title, Post, CreateDate, CategoryID) values('K�ttbullar i tomats�s', 'Koka pastan enligt anvisningen p� f�rpackningen.H�ll av oliver och kapris i en sil. Mortla f�nk�lsfr�na.Stek k�ttbullarna i oljan i en stekpanna, krydda med f�nk�lsfr�n.S�nk v�rmen och r�r i pastas�s, oliver och kapris i pannan. L�t sjuda 2 minuter.','2020-01-11',5)
insert into Recipe (Title, Post, CreateDate, CategoryID) values('Pasta polpette', 'Skala l�k och vitl�k. Hacka l�ken och riv vitl�ken.Ansa och skiva f�nk�len tunt.Fr�s l�ken, vitl�ken och f�nk�len i olivoljan i en gryta, tills de b�rjar bli lite mjuka.H�ll p� tomats�sen, koka sakta ca 10 minuter.Stek k�ttbullarna i sm�ret enligt anvisningen p� f�rpackningen.Koka pastan i saltat vatten enligt anvisningen p� f�rpackningen. H�ll av pastan i ett durkslag men spara 1 dl av kokvattnet (f�r 4 port).Blanda pastan med tomats�s, kokvatten och spenat. Smaka av med salt och peppar.','2020-01-23',5)
insert into Recipe (Title, Post, CreateDate, CategoryID) values('Pasta med jord�rtskockss�s och portabello', 'Tina sojab�norna.S�tt p� en kastrull med vatten till pastan och som ocks� rymmer sojab�norna.Skala och skiva l�k och jord�rtskocka. Fr�s dem i sm�ret i en kastrull.Pressa i vitl�ken och tills�tt gr�dden och buljongen. L�t sjuda ca 10 minuter. Mixa till en sl�t s�s med en stavmixer och smaka av med salt, peppar och n�gra droppar citronsaft.Koka pastan enligt anvisningen p� f�rpackningen. Koka sojab�norna tillsammans med pastan de 2 sista minuterna p� pastans koktid.Ansa och sk�r portabellon i skivor. Stek svampen i olivoljan i en stekpanna och krydda med salt och chiliflakes. Blanda s�sen med pastan och spenaten, toppa med svamp.','2019-02-18',5)
insert into Recipe (Title, Post, CreateDate, CategoryID) values('Vegolasagne med zucchini och spenat', 'S�tt ugnen p� 180�C.Hacka schalottenl�ken, purjol�ken och vitl�ken fint. Sk�r zucchinin i tunna skivor p� l�ngden.Fr�s l�ken tills den �r mjuk och genomskinlig (den ska inte f� f�rg). Blanda ner spenaten och v�nta till den krymper ihop. Tills�tt sojagr�dde och sojadryck. Blanda ner limejuice, dragon, muskot. Smaka av med salt och peppar.Varva s�s och lasagneplattor, zucchiniskivor och h�lften av osten i en ugnss�ker form. Avsluta med s�s och toppa med resten av osten.Gr�dda i mitten av ugnen i ca 30 minuter till det bubblar p� ytan och osten �r gyllenbrun.','2019-06-08',4)
insert into Recipe (Title, Post, CreateDate, CategoryID) values('Kryddig kebab med renskav', 'Skala och riv vitl�ken. Blanda den med gr�ddfil. Smaks�tt med salt och peppar.Dela och ta bort k�rnorna p� tomaterna. Sk�r tomaterna i sm� t�rningar. Skala och hacka l�ken fint. Hacka persiljan. Blanda tomat, l�k och persilja med harissa.Ansa, sk�lj och strimla salladen fint.Stek renskaven i omg�ngar i oljan i en stekpanna, krydda med salt, peppar och ras el hanout.V�rm pitabr�den enligt anvisningen p� f�rpackningen.Fyll pitabr�den med renskav, sallad och tomat- och l�ksalsa. Ringla �ver vitl�kss�s och toppa g�rna med feferoni.','2019-11-19',1)
insert into Recipe (Title, Post, CreateDate, CategoryID) values('Korean fried chicken', 'Sk�r varje kycklingl�rfil� i 3 bitar. V�nd f�rst kycklingen i majsst�rkelsen och sedan i frityrsmeten s� de t�cks runtom. V�nd sedan en g�ng till i majsst�rkelsen. V�rm oljan till 180�C i en stor kastrull.Fritera kycklingen i omg�ngar ca 10 minuter eller tills kycklingen �r genomstekt och krispig. L�gg p� galler eller hush�llspapper och l�t rinna av. Om du vill ha kycklingen extra krispig friterar du den en g�ng till.','2019-04-13',2)
insert into Recipe (Title, Post, CreateDate, CategoryID) values('S�tstark kyckling med krispig blomk�l', 'Tina blomk�len (om fryst anv�nds).S�tt ugnen p� 250�C och s�tt in en pl�t.Kryddig kyckling: Sk�r varje kyckling i 3 bitar. Blanda salt och oregano och v�nd runt kycklingen i blandningen.Krispig blomk�l: Tillaga blomk�len i ugnen enligt anvisningen p� f�rpackningen. Koka bulgurn enligt anvisningen p� f�rpackningen.Kryddig kyckling: Stek kycklingen i oljan i en stekpanna i 3 minuter. S�nk v�rmen och r�r i sweet chilis�s, vatten och soja. Sjud i 3 minuter till en s�sig konsistens (kontrollera att kycklingen �r klar, innertemperaturen ska vara 72�C).','2020-01-03',2)
insert into Recipe (Title, Post, CreateDate, CategoryID) values('Ugnsbakad fisk med saffranssmetana', 'Tina fisken och b�norna.S�tt ugnen p� 200�C.Mos: Koka upp vatten i en kastrull. Skala och sk�r potatisen i mindre bitar. L�gg i potatisen och l�t sm�koka under lock tills den �r mjuk. L�gg b�norna i en ugnsform och l�gg p� fisken. Krydda med salt och peppar och st�ll in mitt i ugnen ca 15 minuter eller tills innertemperaturen p� fisken �r 56�C.','2019-08-27',3)
insert into Recipe (Title, Post, CreateDate, CategoryID) values('Fiskgryta med saffransaioli och baguette', 'Fiskgryta: Tina musslorna och torsken om fryst anv�nds.Br�d: S�tt ugnen p� 225�C.Fiskgryta: Skala l�k, mor�tter och potatis och sk�r dem i sm� t�rningar. Fr�s l�k, mor�tter och potatis i oljan i en gryta n�gra minuter och pressa i vitl�ken. R�r ner passerade tomater, vatten och smulad buljongt�rning. L�t koka upp. S�nk v�rmen och l�t grytan sjuda tills gr�nsakerna �r n�stan mjuka, ca 10 minuter.Br�d: Gr�dda br�den enligt anvisningen p� f�rpackningen. Aioli: Blanda majonn�sen med saffranet och smaka av med salt och peppar.Fiskgryta: Sk�r fisken i bitar och l�gg ner i grytan. L�t sjuda ca 5 minuter.','2020-01-09',3)

delete from Recipe where RecipeID =17