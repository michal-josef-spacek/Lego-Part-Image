package Lego::Part::Image::LugnetCom;

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
	if (! defined $self->{'part'}->design_id) {
		err "Design ID doesn't defined.";
	}
	my $url = sprintf 'http://img.lugnet.com/ld/%s.gif',
		$self->{'part'}->design_id;
	return $url;
}

1;

__END__
