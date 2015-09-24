#!perl
# Scheduled recycling pickups
# The default (1182JR 1) is for Amstelveen city hall
use v5.10;
use strict;
use warnings;
use IO::Prompt::Tiny 'prompt';
use Web::Query;
use WWW::Mechanize;
use File::Basename;

my $link = get_perl_link();
my ( $file, $dest ) = download_zip($link);

# say $zipfile;
unzip_file( $file, $dest );

sub unzip_file {
    my ( $zipName, $dirName ) = @_;
    use Archive::Zip qw(:ERROR_CODES);
    if ( !-d $dirName ) {
        mkdir $dirName;
    }

    my $zip    = Archive::Zip->new();
    my $status = $zip->read($zipName);
    die "Read of $zipName failed\n" if $status != AZ_OK;
    my $extract_status = $zip->extractTree( '', $dirName );
    if ( $extract_status != AZ_OK ) {
        die "Extract of $zipName failed\n";
    }
    else {
        say "Extract $zipName done!";
    }
}

sub download_zip {
    my ($URL) = @_;
    my $file_name = basename($URL);
    if ( !-f $file_name ) {
        my $mech = WWW::Mechanize->new;
        $mech->get($URL);
        $mech->save_content($file_name);
        if ( $mech->success() ) {
            print "file $URL downloaded correctly\n";
        }
        else {
            print "error downloading file $URL: $mech->status()\n";
        }
    }
    else {
        print "file $file_name already exists\n";
    }
    ( my $without_extension = $file_name ) =~ s/\.[^.]+$//;
    return ( $file_name, $without_extension );
}

sub get_perl_link {

# http://strawberryperl.com/download/5.20.3.1/strawberry-perl-5.20.3.1-32bit.zip
# http://strawberryperl.com/releases.html <a href="/download/5.20.3.1/strawberry-perl-5.20.3.1-32bit-portable.zip" onclick="ga('send', 'event', 'Release', 'Download', '5.20.3.1-32bit-portable.zip');">32bit PortableZIP edition</a>
    my @portable  = ();
    my @version   = ();
    my $base_link = 'http://strawberryperl.com';
    say "get avaible portable perl from $base_link:";
    wq("$base_link/releases.html")->find('a[href]')->each(
        sub {
            my $link_name = $_->attr('href');
            if ( $link_name =~ /32bit-portable[.]zip/i ) {
                push @portable, $link_name;

                # /download/5.14.2.1/strawberry-perl-5.14.2.1-32bit-portable.zip
                if ( $link_name =~
/strawberry-perl-(?<perl_version_number>[.0-9]+?)-32bit-portable[.]zip/i
                  )
                {
                    push @version, $+{perl_version_number};
                }
            }
        }
    );

    my @sort_version = sort { $b cmp $a } @version;
    my $i = 1;
    for my $ver (@sort_version) {
        say "$i) $ver";
        $i++;
    }
    local $| = 1;
    my $perl_version = prompt( 'Select Perl version for download:', '1' );
    my $version_perl = $sort_version[ $perl_version - 1 ];
    my @name_perl = grep /strawberry-perl-${version_perl}-32bit-portable[.]zip/,
      @portable;
    my $perl_link = $base_link . $name_perl[0];
    printf "[%s]\n", $perl_link;
    return $perl_link;
}

# say $sort_version[ $perl_version + 1 ];