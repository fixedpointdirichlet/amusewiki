use utf8;
package AmuseWikiFarm::Schema::Result::MirrorOrigin;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

AmuseWikiFarm::Schema::Result::MirrorOrigin

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

=head1 TABLE: C<mirror_origin>

=cut

__PACKAGE__->table("mirror_origin");

=head1 ACCESSORS

=head2 mirror_origin_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 site_id

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 16

=head2 remote_domain

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 remote_path

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 active

  data_type: 'integer'
  default_value: 0
  is_nullable: 0
  size: 1

=cut

__PACKAGE__->add_columns(
  "mirror_origin_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "site_id",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 16 },
  "remote_domain",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "remote_path",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "active",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</mirror_origin_id>

=back

=cut

__PACKAGE__->set_primary_key("mirror_origin_id");

=head1 RELATIONS

=head2 mirror_exclusions

Type: has_many

Related object: L<AmuseWikiFarm::Schema::Result::MirrorExclusion>

=cut

__PACKAGE__->has_many(
  "mirror_exclusions",
  "AmuseWikiFarm::Schema::Result::MirrorExclusion",
  { "foreign.mirror_origin_id" => "self.mirror_origin_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 mirror_infos

Type: has_many

Related object: L<AmuseWikiFarm::Schema::Result::MirrorInfo>

=cut

__PACKAGE__->has_many(
  "mirror_infos",
  "AmuseWikiFarm::Schema::Result::MirrorInfo",
  { "foreign.mirror_origin_id" => "self.mirror_origin_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 site

Type: belongs_to

Related object: L<AmuseWikiFarm::Schema::Result::Site>

=cut

__PACKAGE__->belongs_to(
  "site",
  "AmuseWikiFarm::Schema::Result::Site",
  { id => "site_id" },
  { is_deferrable => 0, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2021-07-30 10:11:41
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:OYMUpnr7342chqJHHweWng

use LWP::UserAgent;
use JSON::MaybeXS;
use Try::Tiny;
use AmuseWikiFarm::Log::Contextual;

has ua => (is => 'rw',
           isa => 'Object',
           lazy => 1,
           builder => '_build_ua',
          );

sub _build_ua {
    return LWP::UserAgent->new(timeout => 5);
}

sub fetch_remote {
    my ($self) = @_;
    my $url = $self->manifest_url;
    my $res = $self->ua->get($self->manifest_url);
    my %out;
    if ($res->is_success) {
        try {
            $out{data} = decode_json($res->content);
        }
        catch {
            my $err = $_;
            $out{error} = $err;
            log_error { "Failure decoding $url output "};
        };
    }
    else {
        $out{error} = $res->status_line;
        log_error { "Failure downloading $url " . $res->status_line };
    }
    return \%out;
}

sub manifest_url {
    my $self = shift;
    my $path = $self->remote_path;
    $path =~ s/\/\z//;
    return 'https://' . $self->remote_domain . $self->remote_path . '/manifest.json';
}

__PACKAGE__->meta->make_immutable;
1;
