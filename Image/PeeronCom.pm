package Lego::Part::Image::PeeronCom;

# Pragmas.
use base qw(Lego::Part::Image);
use strict;
use warnings;

# Version.
our $VERSION = 0.01;

# Get image URL.
sub image_url {
	my $self = shift;
	my $url = sprintf 'http://media.peeron.com/ldraw/images/%d/100/%s.png',
		$self->{'part'}->color, $self->{'part'}->design_id;
	return $url;
}

1;

__END__
