#perl -T

use Test::More;
use Acme::MetaSyntactic;

my $number = 10;
plan('tests', $number);
my $meta = Acme::MetaSyntactic->new( 'soviet', category => 'vehicles/missiles' );
my @names = $meta->name( $number );

foreach (@names) {
  like($_, qr/^(?:Frog|[AGKS][a-z]*)$/, "Except for the Frog, a missile codename is a single word, starting with A, G, K or S");
}
