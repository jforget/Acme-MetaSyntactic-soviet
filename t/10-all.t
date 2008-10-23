#perl -T

use Test::More;
use Acme::MetaSyntactic;

my $number = 50;
plan('tests', $number);
my $meta = Acme::MetaSyntactic->new( 'soviet', category => ':all' );
my @names = $meta->name( $number );

foreach (@names) {
  like($_, qr/^([ABCFGHKMS]|[A-Z][a-z]*_[A-Z])[a-z]*$/, "An electronic device is composed of two capitalized words separated by an underscore");
}
