package Lego::Part::Image;

# Pragmas.
use strict;
use warnings;

# Modules.
use Class::Utils qw(set_params);
use Error::Pure qw(err);
use Readonly;
use Scalar::Util qw(blessed);

# Constants.
Readonly::Scalar our $EMPTY_STR => q{};

# Version.
our $VERSION = 0.03;

# Constructor.
sub new {
	my ($class, @params) = @_;

	# Create object.
	my $self = bless {}, $class;	

	# Part object.
	$self->{'part'} = undef;

	# Process parameters.
	set_params($self, @params);

	# Check part object.
	if (! defined $self->{'part'}) {
		err "Parameter 'part' is required.";
	}
	if (! blessed($self->{'part'})
		|| ! $self->{'part'}->isa('Lego::Part')) {

		err "Parameter 'part' must be Lego::Part object.";
	}

	# Object.
	return $self;
}

# Get image.
sub image {
	my $self = shift;
	# TODO Implement getting of image with cache.
	err "This is abstract class. image() method not implemented.";
	return;
}

# Get image URL.
sub image_url {
	my $self = shift;
	err "This is abstract class. image_url() method not implemented.";
	return;
}

1;

__END__

=pod

=encoding utf8

=head1 NAME

Lego::Part::Image - Lego part image abstract class.

=head1 SYNOPSIS

 use Lego::Part::Image;
 my $obj = Lego::Part::Image->new;
 $obj->image;
 $obj->image_url;

=head1 METHODS

=over 8

=item * C<new()>

 Constructor.
 Returns object.

=over 8

=item * C<part>

 Lego::Part object.
 It is required.
 Default value is undef.

=back

=item * C<image()>

 Abstract method for getting image.

=item * C<image_url()>

 Abstract method for getting image url.

=back

=head1 ERRORS

 new():
         Parameter 'part' is required.
         Parameter 'part' must be Lego::Part object.
         From Class::Utils::set_params():
                 Unknown parameter '%s'.

 image():
         This is abstract class. image() method not implemented.

 image_url():
         This is abstract class. image_url() method not implemented.

=head1 EXAMPLE

 # Pragmas.
 use strict;
 use warnings;

 # Modules.
 use Lego::Part;
 use Lego::Part::Image;

 # Error pure setting.
 $ENV{'ERROR_PURE_TYPE'} = 'Print';

 # Object.
 my $obj = Lego::Part::Image->new(
         'part' => Lego::Part->new(
                'color' => 'red',
                'design_id' => '3002',
         ),
 );

 # Get image.
 $obj->image;

 # Output:
 # Lego::Part::Image: This is abstract class. image() method not implemented.

=head1 DEPENDENCIES

L<Class::Utils>,
L<Error::Pure>,
L<Readonly>,
L<Scalar::Util>.

=head1 SEE ALSO

L<Lego::Part::Image::PeeronCom>,
L<Lego::Part::Image::LegoCom>,
L<Lego::Part::Image::LugnetCom>.

L<Task::Lego>.

=head1 REPOSITORY

L<https://github.com/tupinek/Lego-Part-Image>

=head1 AUTHOR

Michal Špaček L<mailto:skim@cpan.org>

L<http://skim.cz>

=head1 LICENSE AND COPYRIGHT

 © 2015 Michal Špaček
 BSD 2-Clause License

=head1 VERSION

0.03

=cut
