#perl -T

use Test::More;
use Acme::MetaSyntactic;

my $number = 10;
plan('tests', $number);
my $meta = Acme::MetaSyntactic->new( 'soviet', category => 'vehicles/helicopters' );
my @names = $meta->name( $number );

foreach (@names) {
  like($_, qr/^H[a-z]*$/, "An helicopter codename is a single word, starting with H");
}
