package Lego::Part::Image::LegoCom;

# Pragmas.
use base qw(Lego::Part::Image);
use strict;
use warnings;

# Modules.
use Error::Pure qw(err);

# Version.
our $VERSION = 0.01;

# Get image URL.
sub image_url {
	my $self = shift;
	if (! defined $self->{'part'}->element_id) {
		err "Element ID doesn't defined.";
	}
	my $url = sprintf 'http://cache.lego.com/media/bricks/5/%s/%s.jpg',
		$self->_zoom, $self->{'part'}->element_id;
	return $url;
}

# lego.com zoom rutine.
sub _zoom {
	my $self = shift;
	# TODO Better resolution? 2/3 in lego.com
	return 2;
}

1;

__END__
