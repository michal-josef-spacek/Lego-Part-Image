use strict;
use warnings;

use Lego::Part::Image::PeeronCom;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Lego::Part::Image::PeeronCom::VERSION, 0.07, 'Version.');
