use strict;
use warnings;

use Test::NoWarnings;
use Test::Pod::Coverage 'tests' => 2;

# Test.
pod_coverage_ok('Lego::Part::Image::LegoCom', 'Lego::Part::Image::LegoCom is covered.');
