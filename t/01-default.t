#perl -T

use Test::More;
use Acme::MetaSyntactic;

my $number = 20;
plan('tests', $number);
my $meta = Acme::MetaSyntactic->new( 'soviet' );
my @names = $meta->name( $number );

foreach (@names) {
  like($_, qr/^[A-Z][a-z]*_[A-Z][a-z]*$/, "An electronic device is composed of two capitalized words separated by an underscore");
}
