package Mighty::Social::View::HTML;

use strict;
use warnings;

use base 'Catalyst::View::TT';

__PACKAGE__->config(
    TEMPLATE_EXTENSION => '.tt',
    render_die => 1,
);

=head1 NAME

Mighty::Social::View::HTML - TT View for Mighty::Social

=head1 DESCRIPTION

TT View for Mighty::Social.

=head1 SEE ALSO

L<Mighty::Social>

=head1 AUTHOR

Adam Taylor

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
