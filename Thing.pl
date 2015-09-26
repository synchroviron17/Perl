use strict;
use warnings;
use GD::Simple;
my $img = GD::Simple->new(200, 100);
$img->bgcolor('red');
$img->fgcolor('blue');

# (top_left_x, top_left_y, bottom_right_x, bottom_right_y)
$img->rectangle(0, 10, 10, 0);
$img->rectangle(10, 10, 20, 90);
$img->rectangle(90, 10, 10, 0);

open my $out, '>', 'img.png' or die;
binmode $out;
print $out $img->png;
