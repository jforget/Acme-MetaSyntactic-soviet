use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Acme::MetaSyntactic::soviet',
    license             => 'perl',
    dist_author         => 'Jean Forget <JFORGET@cpan.org>',
    dist_version_from   => 'lib/Acme/MetaSyntactic/soviet.pm',
    dist_abstract       => 'Metasyntactic theme with NATO codenames for Soviet-designed equipment',
    configure_requires => {
	'Module::Build' => 0.33,
    },
    build_requires => {
	'Acme::MetaSyntactic::MultiList' => 0,
        'Test::More' => 0,
    },
    add_to_cleanup      => [ 'Acme-MetaSyntactic-soviet-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
