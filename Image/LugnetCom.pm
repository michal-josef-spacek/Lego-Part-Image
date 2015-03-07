package Lego::Part::Image::LugnetCom;

# Pragmas.
use base qw(Lego::Part::Image);
use strict;
use warnings;

# Version.
our $VERSION = 0.01;

# Get image URL.
sub image_url {
	my $self = shift;
	my $url = sprintf 'http://img.lugnet.com/ld/%s.gif',
		$self->{'part'}->design_id;
	return $url;
}

1;

__END__
