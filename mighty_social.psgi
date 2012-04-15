use strict;
use warnings;

use Mighty::Social;

my $app = Mighty::Social->apply_default_middlewares(Mighty::Social->psgi_app);
$app;

