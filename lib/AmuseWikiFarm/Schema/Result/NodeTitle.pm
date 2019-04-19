use utf8;
package AmuseWikiFarm::Schema::Result::NodeTitle;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

AmuseWikiFarm::Schema::Result::NodeTitle - Linking table from Node to Title

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<node_title>

=cut

__PACKAGE__->table("node_title");

=head1 ACCESSORS

=head2 node_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 title_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "node_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "title_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</node_id>

=item * L</title_id>

=back

=cut

__PACKAGE__->set_primary_key("node_id", "title_id");

=head1 RELATIONS

=head2 node

Type: belongs_to

Related object: L<AmuseWikiFarm::Schema::Result::Node>

=cut

__PACKAGE__->belongs_to(
  "node",
  "AmuseWikiFarm::Schema::Result::Node",
  { node_id => "node_id" },
  { is_deferrable => 0, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 title

Type: belongs_to

Related object: L<AmuseWikiFarm::Schema::Result::Title>

=cut

__PACKAGE__->belongs_to(
  "title",
  "AmuseWikiFarm::Schema::Result::Title",
  { id => "title_id" },
  { is_deferrable => 0, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2019-04-05 08:15:44
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Pqdn0CX4NwTwuMYNzus2yg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
