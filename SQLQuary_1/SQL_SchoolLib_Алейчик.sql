Create database ShoolLib
use ShoolLib

create table Student(
						ID_Stud tinyint not null,
                   		DateBirthStud date not null,
                    	NameStud varchar(20) not null,
                    	SurnameStud varchar(20) not null, 
                    	PatronymicStud varchar(20) not null, 
						PhoneStud char(14) not null,
						AddressStud varchar(20) not null,
						AgeStud int not null,
						
                    	constraint CS_PK_Student primary key(ID_Stud),
						constraint CH_Check_Phone Check ( PhoneStud like '[0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]'),
						constraint PhoneStud UNIQUE (PhoneStud) 
					)



					--edit tabl Student 
				insert Student Values ('1','21.12.1999','Mark','Alias','Dolgobrovski','334-34-34','Kapchetkovo 2','18')
					insert Student Values ('2','11.11.1998','Jon','El','Bawn','334-33-44','Kapchetkovo 2','19')
						insert Student Values ('3','15.10.1997','Klark','Fobi','Argentu','334-23-64','Kapchetkovo 2','20')
							insert Student Values ('4','19.9.1996','Aloe','Dmitri','Shukovski','335-33-39','Kapchetkovo 2','21')
			
				Select * from Student
				SELECT DISTINCT  SUM(AgeStud)/COUNT(AgeStud) AS AgeAverage FROM Student 
				

create table TypeIzd (
						ID_TypeIzd tinyint not null,
						Name varchar(2) not null,
						constraint CS_PK_TypeIzd primary key(ID_TypeIzd),
						constraint CH_Check_Name Check (Name in ('кн','сп')) ,
						constraint CH_Check_Id_TypeIzd Check (ID_TypeIzd BETWEEN 0 and 2 )
                     )

					
create table Predmet (
						ID_Predmet tinyint not null,
						NamePredmet varchar(15) not null,
						constraint CS_PK_Predmet primary key(ID_Predmet),
						constraint PredmetName UNIQUE (NamePredmet) ,
						constraint CH_Check_Id_TypeIzd_2 Check (ID_Predmet BETWEEN 0 and 8 )	
                     )



					
create table Izdatelstvo (
							ID_Izdatelstvo tinyint not null,
                            NameIzdatelstvo varchar(20) not null,
                            PochtIndex int not null,
							Email varchar(30) not null,
							Phone char(14) not null
							constraint CS_PK_Izdatelstvo primary key(ID_Izdatelstvo),
						
						 )


create table Librarian (
						ID_Librarian tinyint not null,
                    	DateBirthLib datetime not null,
                    	NameLib varchar(20) not null,
                    	SurnameLib varchar(20) not null, 
                    	PatronymicLib varchar(20) not null, 
						PhoneLib int not null,
						constraint CS_PK_Librarian primary key(ID_Librarian)
                       )



create table Izdanie (
						ID_Izd tinyint not null,					
                    	Autor varchar(20) not null,
                    	NamePubl varchar(20) not null,
                    	YearIzd date not null,
						CountPages tinyint default '120',
						ID_TypeIzd tinyint not null,
						ID_Predmet tinyint not null,
						ID_Izdatelstvo tinyint not null,	
                    	constraint CS_PK_Izdanie primary key(ID_Izd),
						constraint CS_FK_Izdanie_TypeIzd foreign key (ID_TypeIzd) references TypeIzd(ID_TypeIzd),
						constraint CS_FK_Izdanie_Predmet foreign key (ID_Predmet ) references Predmet(ID_Predmet ),
						constraint CS_FK_Izdanie_Izdatelstvo foreign key (ID_Izdatelstvo) references Izdatelstvo(ID_Izdatelstvo)
                     )
					 Select * from Izdanie
					 	insert Izdanie Values ('1','Mark','Rakuten','1999','200')


					


create table Issue (
						ID_Issue tinyint not null,
						Count int not null, 
						DateReturn datetime not null,
						DateIssue datetime not null,
						Term int not null,
						MarkReturn varchar(1),
						ID_Stud tinyint not null,
						ID_Izd tinyint not null,
						ID_Librarian tinyint,
						constraint CS_PK primary key(ID_Issue),
						constraint CS_FK_Issue_Student foreign key (ID_Stud) references Student(ID_Stud),
						constraint CS_FK_Issue_Izdanie foreign key (ID_Izd) references Izdanie(ID_Izd),
						constraint CS_FK_Issue_Librarian foreign key (ID_Librarian) references Librarian(ID_Librarian) on delete set null,
						constraint CH_Check_Name_2 Check (MarkReturn in ('н','з')),
						
					)




					


					
