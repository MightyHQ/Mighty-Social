package Mighty::Social::Schema::Result::Url;

use strict;
use warnings;

use parent 'DBIx::Class::Core';

__PACKAGE__->table('url');
__PACKAGE__->add_columns(
    id => {
        data_type => 'integer',
    }.
    url => {
        data_type => 'varchar',
    },
    website_id => {
        data_type => 'integer',
    },
);

__PACKAGE__->set_primary_key('id');

__PACKAGE__->belongs_to(
    'website' => 'Mighty::Social::Schema::Result::website',
    { 'foreign.id' => 'self.website_id' },
);

1;
