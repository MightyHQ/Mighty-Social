#!/usr/bin/env perl
# IMPORTANT: if you delete this file your app will not work as
# expected.  You have been warned.
use inc::Module::Install 1.02;
use Module::Install::Catalyst; # Complain loudly if you don't have
                               # Catalyst::Devel installed or haven't said
                               # 'make dist' to create a standalone tarball.

name 'Mighty-Social';
all_from 'lib/Mighty/Social.pm';

requires 'Catalyst::Action::RenderView';
requires 'Catalyst::Model::DBIC::Schema';
requires 'Catalyst::Runtime' => '5.90011';
requires 'Catalyst::Plugin::ConfigLoader';
requires 'Catalyst::Plugin::Static::Simple';
requires 'Catalyst::View::TT';

requires 'DBD::Pg';
requires 'DBIx::Class' => '0.08196';
requires 'DBIx::Class::Migration' => '0.022';
requires 'Test::postgresql';

requires 'Template';

requires 'Moose' => '2.0403';
requires 'namespace::autoclean';

requires 'Config::General';
requires 'FindBin::libs';

requires 'Plack' => '0.9986';
requires 'Starman' => '0.3000';

test_requires 'Test::More' => '0.88';
catalyst;

install_script glob('script/*.pl');
auto_install;
WriteAll;
