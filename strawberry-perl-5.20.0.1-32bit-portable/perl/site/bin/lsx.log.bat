@rem = '--*-Perl-*--
@echo off
if "%OS%" == "Windows_NT" goto WinNT
perl -x -S "%0" %1 %2 %3 %4 %5 %6 %7 %8 %9
@set ErrorLevel=%ErrorLevel%
goto endofperl
:WinNT
perl -x -S %0 %*
@set ErrorLevel=%ErrorLevel%
if NOT "%COMSPEC%" == "%SystemRoot%\system32\cmd.exe" goto endofperl
if %errorlevel% == 9009 echo You do not have Perl in your PATH.
goto endofperl
@rem ';
#!perl
#line 16
Sheet: Sheet1
( 0 , 0 ) => ID
( 0 , 1 ) => title
( 0 , 2 ) => prefix
( 0 , 3 ) => first name
( 0 , 4 ) => midname
( 0 , 5 ) => last name
( 0 , 6 ) => suffix
( 0 , 7 ) => nickname
( 0 , 8 ) => father's ID
( 0 , 9 ) => mother's ID
( 0 , 10 ) => email
( 0 , 11 ) => webpage
( 0 , 12 ) => date of birth
( 0 , 13 ) => date of death
( 0 , 14 ) => gender
( 0 , 15 ) => is living?
( 0 , 16 ) => place of birth
( 0 , 17 ) => place of death
( 0 , 18 ) => cemetery
( 0 , 19 ) => schools
( 0 , 20 ) => jobs
( 0 , 21 ) => work places
( 0 , 22 ) => places of living
( 0 , 23 ) => general
( 1 , 0 ) => I37
( 1 , 3 ) => Александра
( 1 , 5 ) => Короткова
( 1 , 14 ) => 1
( 1 , 15 ) => 0
( 2 , 0 ) => I40
( 2 , 3 ) => Пелагея Ивановна
( 2 , 5 ) => Чумакова
( 2 , 14 ) => 1
( 2 , 15 ) => 0
( 3 , 0 ) => I30
( 3 , 3 ) => Анна
( 3 , 4 ) => Васильевна
( 3 , 5 ) => Найдышева
( 3 , 8 ) => I34
( 3 , 9 ) => I35
( 3 , 14 ) => 1
( 3 , 15 ) => 0
( 4 , 0 ) => I29
( 4 , 3 ) => Анна
( 4 , 4 ) => Михайловна
( 4 , 5 ) => Флоренская
( 4 , 12 ) => 13/2/1889
( 4 , 13 ) => 18/03/1973
( 4 , 14 ) => 1
( 4 , 15 ) => 0
( 4 , 23 ) => уроденная Гиацинтова
( 5 , 0 ) => I11
( 5 , 3 ) => Елена
( 5 , 4 ) => Алексеевна
( 5 , 5 ) => Мишина
( 5 , 8 ) => I4
( 5 , 9 ) => I6
( 5 , 14 ) => 1
( 5 , 15 ) => 1
( 6 , 0 ) => I12
( 6 , 3 ) => Михаил
( 6 , 4 ) => Алексеевич
( 6 , 5 ) => Мишин
( 6 , 8 ) => I4
( 6 , 9 ) => I6
( 6 , 14 ) => 0
( 6 , 15 ) => 1
( 7 , 0 ) => I4
( 7 , 3 ) => Алексей
( 7 , 4 ) => Михайлович
( 7 , 5 ) => Мишин
( 7 , 8 ) => I17
( 7 , 9 ) => I15
( 7 , 12 ) => 18/6/1939
( 7 , 14 ) => 0
( 7 , 15 ) => 0
( 8 , 0 ) => I41
( 8 , 3 ) => Василий
( 8 , 5 ) => Торбинская
( 8 , 14 ) => 0
( 8 , 15 ) => 1
( 9 , 0 ) => I17
( 9 , 3 ) => Михаил
( 9 , 4 ) => Иванович
( 9 , 5 ) => Мишин
( 9 , 8 ) => I27
( 9 , 9 ) => I52
( 9 , 12 ) => 16/9/1906
( 9 , 13 ) => 14/1/1966
( 9 , 14 ) => 0
( 9 , 15 ) => 0
( 10 , 0 ) => I13
( 10 , 3 ) => Мария
( 10 , 4 ) => Алексеевна
( 10 , 5 ) => Мишина
( 10 , 8 ) => I4
( 10 , 9 ) => I6
( 10 , 14 ) => 1
( 10 , 15 ) => 1
( 11 , 0 ) => I34
( 11 , 3 ) => Василий
( 11 , 5 ) => Найдышева
( 11 , 14 ) => 0
( 11 , 15 ) => 1
( 12 , 0 ) => I27
( 12 , 3 ) => Иван
( 12 , 4 ) => Иванович
( 12 , 5 ) => Мишин
( 12 , 8 ) => I66
( 12 , 9 ) => I71
( 12 , 14 ) => 0
( 12 , 15 ) => 0
( 13 , 0 ) => I19
( 13 , 3 ) => Валерий
( 13 , 4 ) => Петрович
( 13 , 5 ) => Варлашкин
( 13 , 8 ) => I57
( 13 , 9 ) => I56
( 13 , 12 ) => 06/02/1939
( 13 , 14 ) => 0
( 13 , 15 ) => 1
( 14 , 0 ) => I6
( 14 , 3 ) => Кира
( 14 , 4 ) => Кирилловна
( 14 , 5 ) => Мишина
( 14 , 8 ) => I21
( 14 , 9 ) => I23
( 14 , 11 ) => http://www.geni.com/photo/view/?photo_id=6000000001951156276
( 14 , 12 ) => 29/12/1941
( 14 , 14 ) => 1
( 14 , 15 ) => 1
( 15 , 0 ) => I20
( 15 , 3 ) => Андрей
( 15 , 4 ) => Валерьевич
( 15 , 5 ) => Варлашкин
( 15 , 8 ) => I19
( 15 , 9 ) => I6
( 15 , 14 ) => 0
( 15 , 15 ) => 1
( 16 , 0 ) => I0
( 16 , 3 ) => Николай
( 16 , 4 ) => Алексеевич
( 16 , 5 ) => Мишин
( 16 , 8 ) => I4
( 16 , 9 ) => I6
( 16 , 10 ) => mi@ya.ru
( 16 , 11 ) => http://www.geni.com/photo/view/?photo_id=6000000000910785672
( 16 , 12 ) => 7/2/1976
( 16 , 14 ) => 0
( 16 , 15 ) => 1
( 16 , 16 ) => "Russia" "Moscow"
( 16 , 19 ) => 780
( 16 , 20 ) => Rosbank
( 17 , 0 ) => I15
( 17 , 3 ) => Лидия
( 17 , 4 ) => Михайловна
( 17 , 5 ) => Хомякова
( 17 , 8 ) => I25
( 17 , 9 ) => I26
( 17 , 12 ) => 5/4/1906
( 17 , 13 ) => 5/4/1970
( 17 , 14 ) => 1
( 17 , 15 ) => 0
( 18 , 0 ) => I9
( 18 , 3 ) => Лидия
( 18 , 4 ) => Алексеевна
( 18 , 5 ) => Левицкая
( 18 , 8 ) => I4
( 18 , 9 ) => I6
( 18 , 12 ) => 5/3/1970
( 18 , 14 ) => 1
( 18 , 15 ) => 1
( 19 , 0 ) => I3
( 19 , 3 ) => Ирина Юревна
( 19 , 5 ) => Метелкина
( 19 , 12 ) => 23/3/1979
( 19 , 14 ) => 1
( 19 , 15 ) => 1
( 20 , 0 ) => I21
( 20 , 3 ) => Кирилл
( 20 , 4 ) => Павлович
( 20 , 5 ) => Флоренский
( 20 , 8 ) => I28
( 20 , 9 ) => I29
( 20 , 12 ) => 27/12/1915
( 20 , 13 ) => 9/4/1982
( 20 , 14 ) => 0
( 20 , 15 ) => 0
( 21 , 0 ) => I14
( 21 , 3 ) => Анна
( 21 , 4 ) => Алексеевна
( 21 , 5 ) => Мишина
( 21 , 8 ) => I4
( 21 , 9 ) => I6
( 21 , 14 ) => 1
( 21 , 15 ) => 1
( 22 , 0 ) => I26
( 22 , 3 ) => Анна
( 22 , 4 ) => Григорьевна
( 22 , 5 ) => Хомякова
( 22 , 14 ) => 1
( 22 , 15 ) => 0
( 22 , 23 ) => урожденной Новоселовой
( 23 , 0 ) => I32
( 23 , 3 ) => Самуил Иванович
( 23 , 5 ) => Кейвсар
( 23 , 14 ) => 0
( 23 , 15 ) => 1
( 24 , 0 ) => I25
( 24 , 3 ) => Михаил
( 24 , 4 ) => Михайлович
( 24 , 5 ) => Хомяков
( 24 , 8 ) => I54
( 24 , 9 ) => I53
( 24 , 14 ) => 0
( 24 , 15 ) => 0
( 25 , 0 ) => I39
( 25 , 3 ) => Леонид
( 25 , 5 ) => Кейвсар
( 25 , 8 ) => I32
( 25 , 9 ) => I37
( 25 , 14 ) => 0
( 25 , 15 ) => 1
( 26 , 0 ) => I35
( 26 , 3 ) => Елена Васильевна
( 26 , 5 ) => Торбинская
( 26 , 8 ) => I41
( 26 , 9 ) => I40
( 26 , 14 ) => 1
( 26 , 15 ) => 1
( 27 , 0 ) => I38
( 27 , 3 ) => Борис
( 27 , 5 ) => Кейвсар
( 27 , 8 ) => I32
( 27 , 9 ) => I37
( 27 , 14 ) => 0
( 27 , 15 ) => 1
( 28 , 0 ) => I23
( 28 , 3 ) => Зинаида
( 28 , 4 ) => Самуиловна
( 28 , 5 ) => Флоренская
( 28 , 8 ) => I32
( 28 , 9 ) => I30
( 28 , 12 ) => 24/10/1916
( 28 , 14 ) => 1
( 28 , 15 ) => 0
( 29 , 0 ) => I28
( 29 , 3 ) => Павел
( 29 , 4 ) => Александрович
( 29 , 5 ) => Флоренский
( 29 , 14 ) => 0
( 29 , 15 ) => 1
( 30 , 0 ) => I10
( 30 , 3 ) => Никита
( 30 , 4 ) => Алексеевич
( 30 , 5 ) => Мишин
( 30 , 8 ) => I4
( 30 , 9 ) => I6
( 30 , 14 ) => 0
( 30 , 15 ) => 1
( 31 , 0 ) => I50
( 31 , 3 ) => Ирина
( 31 , 4 ) => Юрьевна
( 31 , 5 ) => Лебедева
( 31 , 8 ) => I85
( 31 , 9 ) => I84
( 31 , 12 ) => 23/03/1979
( 31 , 14 ) => 1
( 31 , 15 ) => 1
( 32 , 0 ) => I51
( 32 , 3 ) => Артём
( 32 , 4 ) => Николаевич
( 32 , 5 ) => Мишин
( 32 , 8 ) => I0
( 32 , 9 ) => I50
( 32 , 12 ) => 06/06/2014
( 32 , 14 ) => 0
( 32 , 15 ) => 1
( 33 , 0 ) => I52
( 33 , 3 ) => Елена
( 33 , 4 ) => Алексеевна
( 33 , 5 ) => Мишина
( 33 , 8 ) => I77
( 33 , 9 ) => I78
( 33 , 14 ) => 1
( 33 , 15 ) => 0
( 33 , 23 ) => урожденная Хомякова
( 34 , 0 ) => I53
( 34 , 3 ) => Матрона
( 34 , 4 ) => Косминична
( 34 , 5 ) => Хомякова
( 34 , 14 ) => 1
( 34 , 15 ) => 0
( 35 , 0 ) => I54
( 35 , 3 ) => Михаил
( 35 , 4 ) => Иванович
( 35 , 5 ) => Хомяков
( 35 , 14 ) => 0
( 35 , 15 ) => 0
( 36 , 0 ) => I56
( 36 , 3 ) => Александра
( 36 , 4 ) => Дмитриевна
( 36 , 5 ) => Варлашкина
( 36 , 14 ) => 1
( 36 , 15 ) => 0
( 36 , 23 ) => Урожденная Гузеева
( 37 , 0 ) => I57
( 37 , 3 ) => Петр
( 37 , 4 ) => Андреевич
( 37 , 5 ) => Варлашкин
( 37 , 14 ) => 0
( 37 , 15 ) => 0
( 38 , 0 ) => I58
( 38 , 3 ) => Иван
( 38 , 4 ) => Михайлович
( 38 , 5 ) => Мишин
( 38 , 8 ) => I17
( 38 , 9 ) => I15
( 38 , 12 ) => 05/04/1935
( 38 , 14 ) => 0
( 38 , 15 ) => 0
( 39 , 0 ) => I59
( 39 , 3 ) => Михаил
( 39 , 4 ) => Михайлович
( 39 , 5 ) => Мишин
( 39 , 8 ) => I17
( 39 , 9 ) => I15
( 39 , 12 ) => 24/07/1947
( 39 , 14 ) => 0
( 39 , 15 ) => 0
( 40 , 0 ) => I60
( 40 , 3 ) => Борис
( 40 , 4 ) => Иванович
( 40 , 5 ) => Мишин
( 40 , 8 ) => I27
( 40 , 9 ) => I52
( 40 , 12 ) => 16/09/1908
( 40 , 13 ) => '14/01/1970
( 40 , 14 ) => 0
( 40 , 15 ) => 0
( 41 , 0 ) => I61
( 41 , 3 ) => Николай
( 41 , 4 ) => Иванович
( 41 , 5 ) => Мишин
( 41 , 8 ) => I27
( 41 , 9 ) => I52
( 41 , 12 ) => 16/09/1904
( 41 , 13 ) => '14/01/1963
( 41 , 14 ) => 0
( 41 , 15 ) => 0
( 42 , 0 ) => I62
( 42 , 3 ) => Андрей
( 42 , 4 ) => Борисович
( 42 , 5 ) => Мишин
( 42 , 8 ) => I60
( 42 , 14 ) => 0
( 42 , 15 ) => 1
( 43 , 0 ) => I63
( 43 , 3 ) => Наталья
( 43 , 4 ) => Борисович
( 43 , 5 ) => Мишин
( 43 , 8 ) => I60
( 43 , 14 ) => 1
( 43 , 15 ) => 1
( 44 , 0 ) => I64
( 44 , 3 ) => Елена
( 44 , 4 ) => Борисович
( 44 , 5 ) => Мишин
( 44 , 8 ) => I60
( 44 , 14 ) => 1
( 44 , 15 ) => 1
( 45 , 0 ) => I65
( 45 , 3 ) => Сергей
( 45 , 4 ) => Борисович
( 45 , 5 ) => Мишин
( 45 , 8 ) => I60
( 45 , 14 ) => 0
( 45 , 15 ) => 0
( 46 , 0 ) => I66
( 46 , 3 ) => Иван
( 46 , 4 ) => Иванович
( 46 , 5 ) => Мишин
( 46 , 8 ) => I68
( 46 , 9 ) => I69
( 46 , 12 ) => 1/1/1854
( 46 , 13 ) => 1917
( 46 , 14 ) => 0
( 46 , 15 ) => 0
( 47 , 0 ) => I67
( 47 , 3 ) => Михаил
( 47 , 4 ) => Иванович
( 47 , 5 ) => Мишин
( 47 , 8 ) => I68
( 47 , 9 ) => I69
( 47 , 12 ) => 1/1/1864
( 47 , 13 ) => 1917
( 47 , 14 ) => 0
( 47 , 15 ) => 0
( 47 , 23 ) =>   5.Младший Михаил Иванович 1864гр. За ним мой прадед приехал в Москву и всю жизнь с ним проработал.  Михаил Иванович, купец первой гильдии, наиболее богатый и известный из братьев. Был женат на Акилине Кузьминичне. Детей у них не было. Умер в 1917, все передал старшему брату Ивану Ивановичу. А тот умер в том же году, или в 1918, все передал сыну Ивану Ивановичу младшему. Дарственная есть в вашем архиве.
( 48 , 0 ) => I68
( 48 , 3 ) => Иван
( 48 , 4 ) => Амбросимович
( 48 , 5 ) => Мишин
( 48 , 8 ) => I75
( 48 , 12 ) => 1/1/1834
( 48 , 14 ) => 0
( 48 , 15 ) => 0
( 48 , 23 ) => каширского мещанина. Красильня у них там была по словам вашего отца. Жена его Анна Васильевна. (Видимо она была родней моих предков, похожа лицом на бабку прадеда.) Их фото есть в вашем семейном архиве.
( 49 , 0 ) => I69
( 49 , 3 ) => Анна
( 49 , 4 ) => Васильевна
( 49 , 5 ) => Мишина
( 49 , 14 ) => 1
( 49 , 15 ) => 0
( 50 , 0 ) => I70
( 50 , 3 ) => Клавдия
( 50 , 4 ) => Ивановна
( 50 , 5 ) => Мишина
( 50 , 8 ) => I68
( 50 , 9 ) => I69
( 50 , 12 ) => 1/1/1850
( 50 , 14 ) => 1
( 50 , 15 ) => 0
( 51 , 0 ) => I71
( 51 , 3 ) => Авдотья
( 51 , 4 ) => Алексеевна
( 51 , 5 ) => Мишина
( 51 , 14 ) => 1
( 51 , 15 ) => 0
( 51 , 23 ) => урожденная  Буханова
( 52 , 0 ) => I72
( 52 , 3 ) => Сергей
( 52 , 4 ) => Иванович
( 52 , 5 ) => Мишин
( 52 , 8 ) => I68
( 52 , 9 ) => I69
( 52 , 14 ) => 0
( 52 , 15 ) => 0
( 53 , 0 ) => I73
( 53 , 3 ) => Виктор
( 53 , 4 ) => Иванович
( 53 , 5 ) => Мишин
( 53 , 8 ) => I68
( 53 , 9 ) => I69
( 53 , 14 ) => 0
( 53 , 15 ) => 0
( 54 , 0 ) => I74
( 54 , 3 ) => Акилина
( 54 , 4 ) => Кузьминична
( 54 , 5 ) => Мишина
( 54 , 14 ) => 1
( 54 , 15 ) => 0
( 54 , 23 ) => жена I67 Михаил	Иванович	Мишин
( 55 , 0 ) => I75
( 55 , 3 ) => Амбросий
( 55 , 5 ) => Мишин
( 55 , 12 ) => 1/1/1804
( 55 , 14 ) => 0
( 55 , 15 ) => 0
( 56 , 0 ) => I77
( 56 , 3 ) => Алексей
( 56 , 4 ) => Михайлович
( 56 , 5 ) => Хомяков
( 56 , 14 ) => 0
( 56 , 15 ) => 0
( 57 , 0 ) => I78
( 57 , 3 ) => Анастасия
( 57 , 4 ) => Ивановна
( 57 , 5 ) => Хомякова
( 57 , 9 ) => I79
( 57 , 14 ) => 1
( 57 , 15 ) => 0
( 58 , 0 ) => I79
( 58 , 3 ) => Заренкова
( 58 , 5 ) => Заренкова
( 58 , 14 ) => 1
( 58 , 15 ) => 0
( 59 , 0 ) => I80
( 59 , 3 ) => Анастасия
( 59 , 4 ) => Денисовна
( 59 , 5 ) => Лебедева
( 59 , 8 ) => I81
( 59 , 9 ) => I50
( 59 , 12 ) => 4/3/2003
( 59 , 14 ) => 1
( 59 , 15 ) => 1
( 60 , 0 ) => I81
( 60 , 3 ) => Денис
( 60 , 4 ) => Александрович
( 60 , 5 ) => Лебедев
( 60 , 8 ) => I82
( 60 , 12 ) => 17/08/1979
( 60 , 14 ) => 0
( 60 , 15 ) => 1
( 61 , 0 ) => I82
( 61 , 3 ) => Александр
( 61 , 5 ) => Лебедев
( 61 , 9 ) => I83
( 61 , 14 ) => 0
( 61 , 15 ) => 0
( 62 , 0 ) => I83
( 62 , 3 ) => Евгения
( 62 , 5 ) => Аленчикова
( 62 , 13 ) => 26/03/2013
( 62 , 14 ) => 1
( 62 , 15 ) => 0
( 62 , 23 ) => фамилии Лебедева
( 63 , 0 ) => I84
( 63 , 3 ) => Татьяна
( 63 , 4 ) => Георгиевна
( 63 , 5 ) => Метелкина
( 63 , 8 ) => I87
( 63 , 9 ) => I88
( 63 , 12 ) => 16/1/1954
( 63 , 14 ) => 1
( 63 , 15 ) => 1
( 63 , 23 ) => урожденная Буза
( 64 , 0 ) => I85
( 64 , 3 ) => Юрий
( 64 , 4 ) => Николаевич
( 64 , 5 ) => Метелкин
( 64 , 13 ) => 1/5/2000
( 64 , 14 ) => 0
( 64 , 15 ) => 0
( 65 , 0 ) => I86
( 65 , 3 ) => Юрий
( 65 , 4 ) => Юрьевич
( 65 , 5 ) => Метелкин
( 65 , 8 ) => I85
( 65 , 9 ) => I84
( 65 , 12 ) => 26/2/1976
( 65 , 14 ) => 0
( 65 , 15 ) => 1
( 66 , 0 ) => I87
( 66 , 3 ) => Георгий
( 66 , 4 ) => Семенович
( 66 , 5 ) => Буза
( 66 , 8 ) => I90
( 66 , 9 ) => I89
( 66 , 12 ) => 29/2/1924
( 66 , 13 ) => 17/10/1982
( 66 , 14 ) => 0
( 66 , 15 ) => 0
( 67 , 0 ) => I88
( 67 , 3 ) => Вера
( 67 , 4 ) => Петровна
( 67 , 5 ) => Буза
( 67 , 12 ) => 29/2/1924
( 67 , 13 ) => 20/1/1992
( 67 , 14 ) => 1
( 67 , 15 ) => 0
( 67 , 23 ) => урожд Гоменюк
( 68 , 0 ) => I89
( 68 , 3 ) => Анастасия
( 68 , 5 ) => Буза
( 68 , 14 ) => 1
( 68 , 15 ) => 0
( 69 , 0 ) => I90
( 69 , 3 ) => Семен
( 69 , 5 ) => Буза
( 69 , 14 ) => 1
( 69 , 15 ) => 0
( 70 , 0 ) => I91
( 70 , 3 ) => Галина
( 70 , 4 ) => Георгиевна
( 70 , 5 ) => Буза
( 70 , 8 ) => I87
( 70 , 9 ) => I88
( 70 , 14 ) => 1
( 70 , 15 ) => 1
( 70 , 23 ) => урожденная Буза
( 71 , 0 ) => I92
( 71 , 3 ) => Зинаида
( 71 , 4 ) => Георгиевна
( 71 , 5 ) => Бекало
( 71 , 8 ) => I87
( 71 , 9 ) => I88
( 71 , 14 ) => 1
( 71 , 15 ) => 1
( 71 , 23 ) => урожденная Буза
( 72 , 0 ) => I93
( 72 , 3 ) => Юрий
( 72 , 4 ) => Георгиевич
( 72 , 5 ) => Буза
( 72 , 8 ) => I87
( 72 , 9 ) => I88
( 72 , 14 ) => 0
( 72 , 15 ) => 1
( 73 , 0 ) => I94
( 73 , 3 ) => Валерий
( 73 , 4 ) => Георгиевич
( 73 , 5 ) => Буза
( 73 , 8 ) => I87
( 73 , 9 ) => I88
( 73 , 14 ) => 0
( 73 , 15 ) => 0
( 74 , 0 ) => I95
( 74 , 3 ) => Василий
( 74 , 4 ) => Георгиевич
( 74 , 5 ) => Буза
( 74 , 8 ) => I87
( 74 , 9 ) => I88
( 74 , 14 ) => 0
( 74 , 15 ) => 0
( 75 , 0 ) => I96
( 75 , 3 ) => Григорий
( 75 , 4 ) => Георгиевич
( 75 , 5 ) => Буза
( 75 , 8 ) => I87
( 75 , 9 ) => I88
( 75 , 14 ) => 0
( 75 , 15 ) => 0
( 76 , 0 ) => I97
( 76 , 3 ) => Анастасия
( 76 , 4 ) => Ивановна
( 76 , 5 ) => Метелкина
( 76 , 8 ) => I99
( 76 , 9 ) => I100
( 76 , 14 ) => 1
( 76 , 15 ) => 0
( 77 , 0 ) => I98
( 77 , 3 ) => Николай
( 77 , 5 ) => Самоделов
( 77 , 14 ) => 0
( 77 , 15 ) => 0
( 78 , 0 ) => I99
( 78 , 3 ) => Иван
( 78 , 4 ) => Васильевич
( 78 , 5 ) => Метелкин
( 78 , 12 ) => 1906
( 78 , 13 ) => 1/20/1964
( 78 , 14 ) => 0
( 78 , 15 ) => 0
( 79 , 0 ) => I100
( 79 , 3 ) => Ефросиния
( 79 , 4 ) => Ивановна
( 79 , 5 ) => Метелкина
( 79 , 12 ) => 1894
( 79 , 13 ) => 6/11/1967
( 79 , 14 ) => 1
( 79 , 15 ) => 0
( 80 , 0 ) => I101
( 80 , 3 ) => Дарья
( 80 , 5 ) => Горельцева
( 80 , 9 ) => I91
( 80 , 12 ) => 29705
( 80 , 14 ) => 1
( 80 , 15 ) => 1
( 80 , 23 ) => ур Кожевникова
( 81 , 0 ) => I102
( 81 , 3 ) => Роман
( 81 , 5 ) => Горельцев
( 81 , 8 ) => I105
( 81 , 9 ) => I106
( 81 , 12 ) => 29602
( 81 , 14 ) => 0
( 81 , 15 ) => 1
( 82 , 0 ) => I103
( 82 , 3 ) => Артем
( 82 , 4 ) => Романович
( 82 , 5 ) => Горельцев
( 82 , 8 ) => I102
( 82 , 9 ) => I101
( 82 , 14 ) => 0
( 82 , 15 ) => 1
( 83 , 0 ) => I104
( 83 , 3 ) => Полина
( 83 , 4 ) => Романовна
( 83 , 5 ) => Горельцева
( 83 , 8 ) => I102
( 83 , 9 ) => I101
( 83 , 14 ) => 1
( 83 , 15 ) => 1
( 84 , 0 ) => I105
( 84 , 3 ) => Александр
( 84 , 4 ) => Анатольевич
( 84 , 5 ) => Горельцев
( 84 , 14 ) => 0
( 84 , 15 ) => 1
( 85 , 0 ) => I106
( 85 , 3 ) => Елена
( 85 , 5 ) => Горельцева
( 85 , 14 ) => 1
( 85 , 15 ) => 1
Sheet: Лист1
__END__
:endofperl
@"%COMSPEC%" /c exit /b %ErrorLevel%