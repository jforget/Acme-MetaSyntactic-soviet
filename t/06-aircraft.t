#perl -T

use Test::More;
use Acme::MetaSyntactic;

my $number = 10;
plan('tests', $number);
my $meta = Acme::MetaSyntactic->new( 'soviet', category => 'vehicles/aircraft' );
my @names = $meta->name( $number );

foreach (@names) {
  like($_, qr/^[BCFM][a-z]*$/, "An aircraft codename is a single word, starting with B, C, F or M");
}
