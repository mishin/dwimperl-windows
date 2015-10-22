package HTML::FormHandler::Widget::Field::Reset;
# ABSTRACT: reset field rendering widget
use Moose::Role;
use namespace::autoclean;
use HTML::FormHandler::Render::Util ('process_attrs');


sub render_element {
    my ( $self, $result ) = @_;
    $result ||= $self->result;

    my $output = '<input type="reset" name="';
    $output .= $self->html_name . '"';
    $output .= ' id="' . $self->id . '"';
    $output .= ' value="' . $self->html_filter($self->_localize($self->value)) . '"';
    $output .= process_attrs($self->element_attributes($result));
    $output .= ' />';
    return $output;
}

sub render {
    my ( $self, $result ) = @_;
    $result ||= $self->result;
    die "No result for form field '" . $self->full_name . "'. Field may be inactive." unless $result;
    my $output = $self->render_element( $result );
    return $self->wrap_field( $result, $output );
}

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

HTML::FormHandler::Widget::Field::Reset - reset field rendering widget

=head1 VERSION

version 0.40064

=head1 SYNOPSIS

Renders a reset field

=head1 AUTHOR

FormHandler Contributors - see HTML::FormHandler

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Gerda Shank.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
