#perl -T

use Test::More;
use Acme::MetaSyntactic;

my $number = 10;
plan('tests', $number);
my $meta = Acme::MetaSyntactic->new( 'soviet', category => 'electronic/radars' );
my @names = $meta->name( $number );

foreach (@names) {
  like($_, qr/^[A-Z][a-z]*_[A-Z][a-z]*$/, "An radar name is composed of two capitalized words separated by an underscore");
}
