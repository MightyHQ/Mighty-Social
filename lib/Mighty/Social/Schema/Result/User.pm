package Mighty::Social::Schema::Result::User;

use strict;
use warnings;

use parent 'DBIx::Class::Core';

__PACKAGE__->table('user');
__PACKAGE__->add_columns(
    id => {
        data_type => 'integer',
    }.
    name => {
        data_type => 'varchar',
    },
    email_address => {
        data_type => 'varchar',
    },
    password => {
        data_type => 'varchar',
    },
    account_id => {
        data_type => 'integer',
    },
);

__PACKAGE__->set_primary_key('id');

__PACKAGE__->belongs_to(
    'account' => 'Mighty::Social::Schema::Result::Account',
    { 'foreign.id' => 'self.account_id' },
);

1;
