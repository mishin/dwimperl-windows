# dwimperl-windows  
DWIM Perl for Windows like  

http://dwimperl.com/windows.html

DWIM Perl for Windows is a Strawberry Perl derivative for Windows. It contains everything you will need for your Perl development.

It contains:  
  
Strawberry-perl-5.20.0.1-32bit-portable which itself is a standard Perl with several extensions already installed.  
A large part of Task::Kensho, a list of recommended packages.  
Padre, the Perl IDE 0.94.  
Module::Version 0.12 so you can use mversion to check which version of each module you have.  
Moose 2.0402, the post modern Object System.  
Dancer 1.3092 to build a light-weight web application.  
Plack and plackup 0.9985 to serve your web pages.  
Perl::Critic 1.117, to police yourself.  
Perl::Tidy 20101217, to keep your code nice.  
DateTime 0.72 to make it easy to deal with dates and time.  
SQLite 1.35, to hold your data tight.  
MySQL 4.020, PostgreSQL 2.18.1 and DBD::ODBC 1.31 drivers.  
Lots of additional modules... (see details in the README file.)  
  
https://github.com/dwimperl/tools/blob/master/README_5.14.2.1-32bit-windows.txt  
  
1. Reading http://blogs.perl.org/users/sawyer_x/2015/01/web-scraping-continued.html first  
2. Clone repo https://github.com/xsawyerx/web-scraping  
3. cd c:\Users\TOSH\Documents\GitHub  
git clone https://github.com/mishin/web-scraping.git  

4. http://varlogrant.blogspot.ru/2015/06/head-to-head-web-scraping-with-perl.html  
5. cpanm Web::Query  
6. git clone https://gist.github.com/df9800f1458d7b26e3d8.git  
7. cd df9800f1458d7b26e3d8  
8. perl -c yapcna2015.wq.pl  
  
Unknown source type: ... not appropriate to include several thousands of lines of HTML here... at c:/Users/TOSH/Documents/job/perl/strawberry-perl-5.20.0.1-32bit-PDL/perl/site/lib/Web/Query.pm line 81, <DATA> line 1.  

cd ..\web-scraping  
cpanm IO::Prompt::Tiny  
 Read http://stackoverflow.com/questions/18617405/how-to-extract-href-from-a-body-email-in-perl  
 cpanm Archive::Unzip::Burst  
 

