#perl -T

use Test::More;
use Acme::MetaSyntactic;

my $number = 20;
plan('tests', $number);
my $meta = Acme::MetaSyntactic->new( 'soviet', category => 'vehicles' );
my @names = $meta->name( $number );

foreach (@names) {
  like($_, qr/^(?:(?:Fox_Trot|X_Ray|[A-Z][a-z]*)  # Submarine codename, without suffix, including Fox Trot and X Ray
                     (?:_I*V?)?                   # Roman number suffix up to IV
                     (?:_Mod|_Notch)?)$/x,        # Other suffix
           "A submarine can have one or two words (X Ray), a Roman number and a suffix 'mod' or 'notch'");
}
