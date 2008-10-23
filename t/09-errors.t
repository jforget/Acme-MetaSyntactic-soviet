#perl -T

use Test::More;
use Acme::MetaSyntactic;

my $number = 10;
plan('tests', $number);
my $meta = Acme::MetaSyntactic->new( 'soviet', category => 'vehicles/errors' );
my @names = $meta->name( $number );

foreach (@names) {
  like($_, qr/^F[a-z]*$/, "The only cases of wrong designations applied to fighters");
}
