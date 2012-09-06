#perl -T

use Test::More;
use Acme::MetaSyntactic;

my $number = 20;
plan('tests', $number);
my $meta = Acme::MetaSyntactic->new( 'soviet', category => 'vehicles' );
my @names = $meta->name( $number );

foreach (@names) {
  like($_, qr/^(?:(?:[ABCFGHKMS][a-z])               # Vehicle codename, except submarines
                | (?:(?:Fox_Trot|X_Ray|[A-Z][a-z]*)  # Submarine codename, without suffix, including Fox Trot and X Ray
                     (?:_I*V?)?                	     # Roman number suffix
                     (?:_Mod|_Notch)?))$/x,    	     # Other suffix
           "An vehicle codename is usually a single word, but submarines can have two words (X Ray), a Roman number and a suffix 'mod' or 'notch'");
}
