#!/usr/bin/perl
# (c) Travis Dowd
# 
# convert markdown to HTML using pandoc
#
# usage: cnv.pl page.md title
#
use strict;
use warnings;
# get filename and change extension to html
my $file = $ARGV[0];
$file =~ s/md/html/;
# Get title name
my $name = $ARGV[1];
# Add head/body/tail elements and create temp file
head();
body();
tail();
# Call pandoc and convert file
system( "pandoc temp -f markdown -t html -o $file" );
# cleanup/remove temp file
unlink "temp";
# function for html head
sub head {
    open( my $fh, ">", "temp" ) or die $!;
    print( $fh "<html>\n" );
    print( $fh "<head>\n" );
    print( $fh "<meta charset=\"UTF-8\">\n" );
    print( $fh "<!-- Thanks to: https://github.com/xz for the awesome CSS theme -->" );
    print( $fh "<link href=\"style.css\" rel=\"stylesheet\">\n" );
    print( $fh "<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/open-fonts\@1.1.1/fonts/inter.min.css\">\n" );
    print( $fh "<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/\@exampledev/new.css\@1.1.2/new.min.css\">\n" );
    print( $fh "<link rel=\"stylesheet\" href=\"https://newcss.net/theme/terminal.css\">\n" );
    print( $fh "<title>$name</title>\n" );
    print( $fh "</head>\n" );
    print( $fh "<body>\n" );
    print( $fh "<header><h1>$name</h1></header>\n" );
    close( $fh );
}
# function for center of file
sub body {
    open( my $fh, "<", $ARGV[0] ) or die $!;
    open( my $new_fh, ">>", "temp" ) or die $!;
    while( my $line = <$fh> ) {
	print( $new_fh $line );
    }
    close( $fh );
    close( $new_fh );
}
# function for end of html file
sub tail {
    open( my $fh, ">>", "temp" ) or die $!;
    print( $fh "</body>\n" );
    print( $fh "</html>\n" );
    close( $fh );
}
