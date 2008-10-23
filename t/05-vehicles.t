#perl -T

use Test::More;
use Acme::MetaSyntactic;

my $number = 10;
plan('tests', $number);
my $meta = Acme::MetaSyntactic->new( 'soviet', category => 'vehicles' );
my @names = $meta->name( $number );

foreach (@names) {
  like($_, qr/^[ABCFGHKMS][a-z]*$/, "An vehicle codename is a single word");
}
