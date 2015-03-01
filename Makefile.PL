# Pragmas.
use strict;
use warnings;

# Modules.
use inc::Module::Install;

# Definition.
abstract 'Lego part image object.';
author 'Michal Spacek <skim@cpan.org>';
license 'bsd';
name 'Lego-Part-Image';
readme_from 'Image.pm';
requires 'Class::Utils' => 0.03;
requires 'Error::Pure' => 0.22;
requires 'Readonly' => 0;
requires 'Scalar::Util' => 0;
resources 'bugtracker' => 'https://rt.cpan.org/Public/Dist/Display.html'.
	'?Name=Lego-Part-Image';
resources 'homepage' => 'https://github.com/tupinek/Lego-Part-Image';
resources 'repository' => 'git://github.com/tupinek/Lego-Part-Image';
test_requires 'English' => 0;
test_requires 'File::Object' => 0.05;
test_requires 'Test::More' => 0;
test_requires 'Test::Pod' => 0;
test_requires 'Test::Pod::Coverage' => 0;
tests_recursive;
version '0.01';

# Run.
WriteAll();
