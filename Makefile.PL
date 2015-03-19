# Pragmas.
use strict;
use warnings;

# Modules.
use inc::Module::Install;

# Definition.
abstract 'Lego part image objects.';
author 'Michal Spacek <skim@cpan.org>';
license 'bsd';
name 'Lego-Part-Image';
readme_from 'Image.pm';
requires 'Class::Utils' => 0.03;
requires 'Error::Pure' => 0.22;
requires 'Readonly' => 0;
requires 'Scalar::Util' => 0;
requires 'perl' => 5.6.0;
resources 'bugtracker' => 'https://rt.cpan.org/Public/Dist/Display.html'.
	'?Name=Lego-Part-Image';
resources 'homepage' => 'https://github.com/tupinek/Lego-Part-Image';
resources 'repository' => 'git://github.com/tupinek/Lego-Part-Image';
test_requires 'English' => 0;
test_requires 'Error::Pure::Utils' => 0.22;
test_requires 'File::Object' => 0.05;
test_requires 'Lego::Part' => 0.01;
test_requires 'Test::MockObject' => 0;
test_requires 'Test::More' => 0;
test_requires 'Test::NoWarnings' => 0;
test_requires 'Test::Pod' => 0;
test_requires 'Test::Pod::Coverage' => 0;
tests_recursive;
version '0.03';

# Run.
WriteAll();
