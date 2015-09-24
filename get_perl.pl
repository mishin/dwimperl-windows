#!perl
# Scheduled recycling pickups
# The default (1182JR 1) is for Amstelveen city hall
use strict;
use warnings;
use IO::Prompt::Tiny 'prompt';
use Web::Query;

local $| = 1;

my $p_year;
my $perl_version  =  prompt( 'Perl version:',      '5.20.3.1' );
# my $house =    prompt( 'House no.:',        1 );
# http://strawberryperl.com/download/5.20.3.1/strawberry-perl-5.20.3.1-32bit.zip
# http://strawberryperl.com/releases.html <a href="/download/5.20.3.1/strawberry-perl-5.20.3.1-32bit-portable.zip" onclick="ga('send', 'event', 'Release', 'Download', '5.20.3.1-32bit-portable.zip');">32bit PortableZIP edition</a>
my $base_link='http://strawberryperl.com';
wq("$base_link/releases.html")
    ->find('a[href]')
    ->each( sub {
	my $link=$_->attr('href');
        # my ( $month, $year ) = split '-', $_->attr('id');

        printf "$base_link%s\n", $link;

        # $_->find('div.column > p')->each( sub {
            # my ( $day_name, $day_num ) = split ' ', $_->text;
            # my $type = $_->find('span.afvaldescr')->text;
            # print "\t> $day_num (@{[ucfirst $day_name]}): $type\n";
        # });
    } );
