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
our $VERSION = 0.01;

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
