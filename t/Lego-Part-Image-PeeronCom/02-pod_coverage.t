# Pragmas.
use strict;
use warnings;

# Modules.
use Test::NoWarnings;
use Test::Pod::Coverage 'tests' => 2;

# Test.
pod_coverage_ok('Lego::Part::Image::PeeronCom', 'Lego::Part::Image::PeeronCom is covered.');
