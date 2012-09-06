#perl -T

use Test::More;
use Acme::MetaSyntactic;

my $number = 50;
plan('tests', $number);
my $meta = Acme::MetaSyntactic->new( 'soviet', category => ':all' );
my @names = $meta->name( $number );

foreach (@names) {
  like($_, qr/^(?:(?:([ABCFGHKMS]|[A-Z][a-z]*_[A-Z])[a-z]*)  # Codename, except submarines
                | (?:(?:Fox_Trot|X_Ray|[A-Z][a-z]*)          # Submarine codename, without suffix, including Fox Trot and X Ray
                     (?:_I*V?)?                		     # Roman number suffix
                     (?:_Mod|_Notch)?))$/x,    		     # Other suffix
           "Rather complicated regexp, to include both the submarines and the electronic devices");
}
