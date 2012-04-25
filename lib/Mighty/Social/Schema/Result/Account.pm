package Mighty::Social::Schema::Result::Account;

use strict;
use warnings;

use parent 'DBIx::Class::Core';

__PACKAGE__->table('account');
__PACKAGE__->add_columns(
    id => {
        data_type => 'integer',
    }.
    name => {
        data_type => 'varchar',
    },
    type_id => {
        data_type => 'integer',
    },
    admin_user_id => {
        data_type => 'integer',
    },
);

__PACKAGE__->set_primary_key('id');

__PACKAGE__->has_many(
    'users' => 'Mighty::Social::Schem::Result::User',
    { 'foreign.account_id' => 'self.id' }
);

# XXX many-to-many account-user
__PACKAGE__->has_many(
    'websites' => 'Mighty::Social::Schem::Result::User',
    { 'foreign.account_id' => 'self.id' }
);

__PACKAGE__->has_one(
    'admin_user_id' => 'Mighty::Social::Schema::Result::User',
    { 'foreign.account_id' => 'self.admin_user_id' }
);

1;
