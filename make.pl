#!/usr/bin/perl
# makefile for website ( markdown to HTML )
use strict;
use warnings;
# get filename and change extension to html
my $file = $ARGV[0];
$file =~ s/md/html/;
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
    print( $fh "<link href=\"style.css\" rel=\"stylesheet\">\n" );
    print( $fh "<title>$file</title>\n" );
    print( $fh "</head>\n" );
    print( $fh "<body>\n" );
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
