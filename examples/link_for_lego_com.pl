#!/usr/bin/env perl

use strict;
use warnings;

use Lego::Part;
use Lego::Part::Image::LegoCom;

# Object.
my $obj = Lego::Part::Image::LegoCom->new(
        'part' => Lego::Part->new(
               'element_id' => '300321',
        ),
);

# Get image URL.
my $image_url = $obj->image_url;

# Print out.
print "Part with element ID '300321' URL is: ".$image_url."\n";

# Output:
# Part with element ID '300321' URL is: https://www.lego.com/cdn/product-assets/element.img.lod5photo.192x192/300321.jpg