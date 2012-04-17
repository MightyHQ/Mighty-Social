package Mighty::Social::Schema;

use strict;
use warnings;

use parent 'DBIx::Class::Schema';

# This is used to run the appropriate migrations and
# should be incremented after every schema change
our $VERSION = 1;

__PACKAGE__->load_namespaces;

1;
