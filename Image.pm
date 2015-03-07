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
	return $EMPTY_STR;
}

# Get image URL.
sub image_url {
	return $EMPTY_STR;
}

1;

__END__
