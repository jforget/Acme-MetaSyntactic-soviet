#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'Acme::MetaSyntactic::soviet' );
}

diag( "Testing Acme::MetaSyntactic::soviet $Acme::MetaSyntactic::soviet::VERSION, Perl $], $^X" );
