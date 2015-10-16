# Copyrights 2007-2014 by [Mark Overmeer].
#  For other contributors see ChangeLog.
# See the manual pages for details on the licensing terms.
# Pod stripped from pm file by OODoc 2.01.
use warnings;
use strict;

package Log::Report::Dispatcher::Callback;
use vars '$VERSION';
$VERSION = '1.03';

use base 'Log::Report::Dispatcher';

use Log::Report 'log-report';


sub init($)
{   my ($self, $args) = @_;
    $self->SUPER::init($args);

    $self->{callback} = $args->{callback}
        or error __x"dispatcher {name} needs a 'callback'", name => $self->name;

    $self;
}


sub callback() {shift->{callback}}


sub log($$$$)
{   my $self = shift;
    $self->{callback}->($self, @_);
}

1;
