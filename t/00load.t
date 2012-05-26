#!/usr/bin/env perl
use strict;
use warnings;
use lib '../lib';
use blib;

use Test::More tests => 2;
note( "Testing Device::Trepan::Psh $Devel::Trepan::Psh::VERSION" );

BEGIN {
use_ok( 'Devel::Trepan::Psh' );
}

ok(defined($Devel::Trepan::Psh::VERSION), 
   "\$Devel::Trepan::Psh::VERSION number is set");
