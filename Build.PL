#!/usr/bin/env perl
#  Copyright (C) 2012 Rocky Bernstein <rockycpan.org>
#
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <http://www.gnu.org/licenses/>.

use strict;
use warnings;
use Module::Build;
use Config;

my $builder = Module::Build->new( 
    module_name         => 'Devel::Trepan::Psh',
    add_to_cleanup      => [ 'Devel-Trepan-*', 'tmp*', '*.got'  ],
    create_makefile_pl  => 'passthrough',
    dist_abstract       => 
    'Adds shell support  to Devel::Trepan via Psh',
    dist_author         => 'Rocky Bernstein <rocky@cpan.org>',
    dist_version_from   => 'lib/Devel/Trepan/Psh.pm',
    license             => 'gpl',
    needs_compiler      => 0,
    release_status      => 'stable',
    configure_requires  => { 
	'Module::Build' => '0.32',
    },
    requires => {
	'perl'                              => '5.008008',
	'Devel::Trepan'                     => '0.001009',
        'Test::More'                        => '0.81',
         'version'                           => 0,
    },
    sign                => ($ENV{PERL_MB_NOSIGN} ? 0 : 1),
    );

$builder->create_build_script();
