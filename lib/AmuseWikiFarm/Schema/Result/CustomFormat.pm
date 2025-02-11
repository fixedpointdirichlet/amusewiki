use utf8;
package AmuseWikiFarm::Schema::Result::CustomFormat;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

AmuseWikiFarm::Schema::Result::CustomFormat - Custom output formats

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

=head1 TABLE: C<custom_formats>

=cut

__PACKAGE__->table("custom_formats");

=head1 ACCESSORS

=head2 custom_formats_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 site_id

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 16

=head2 format_name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 format_description

  data_type: 'text'
  is_nullable: 1

=head2 format_alias

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 format_code

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 format_priority

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 active

  data_type: 'smallint'
  default_value: 1
  is_nullable: 1

=head2 bb_format

  data_type: 'varchar'
  default_value: 'pdf'
  is_nullable: 0
  size: 16

=head2 bb_epub_embed_fonts

  data_type: 'smallint'
  default_value: 1
  is_nullable: 1

=head2 bb_bcor

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 bb_beamercolortheme

  data_type: 'varchar'
  default_value: 'dove'
  is_nullable: 0
  size: 32

=head2 bb_beamertheme

  data_type: 'varchar'
  default_value: 'default'
  is_nullable: 0
  size: 32

=head2 bb_cover

  data_type: 'smallint'
  default_value: 1
  is_nullable: 1

=head2 bb_crop_marks

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 bb_crop_papersize

  data_type: 'varchar'
  default_value: 'a4'
  is_nullable: 0
  size: 32

=head2 bb_crop_paper_height

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 bb_crop_paper_width

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 bb_crop_paper_thickness

  data_type: 'varchar'
  default_value: '0.10mm'
  is_nullable: 0
  size: 16

=head2 bb_division

  data_type: 'integer'
  default_value: 12
  is_nullable: 0

=head2 bb_fontsize

  data_type: 'integer'
  default_value: 10
  is_nullable: 0

=head2 bb_headings

  data_type: 'varchar'
  default_value: 0
  is_nullable: 0
  size: 64

=head2 bb_imposed

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 bb_mainfont

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 bb_sansfont

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 bb_monofont

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 bb_nocoverpage

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 bb_coverpage_only_if_toc

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 bb_nofinalpage

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 bb_notoc

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 bb_impressum

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 bb_sansfontsections

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 bb_nobold

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 bb_secondary_footnotes_alpha

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 bb_start_with_empty_page

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 bb_continuefootnotes

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 bb_centerchapter

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 bb_centersection

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 bb_opening

  data_type: 'varchar'
  default_value: 'any'
  is_nullable: 0
  size: 16

=head2 bb_papersize

  data_type: 'varchar'
  default_value: 'generic'
  is_nullable: 0
  size: 32

=head2 bb_paper_height

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 bb_paper_width

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 bb_schema

  data_type: 'varchar'
  default_value: '2up'
  is_nullable: 0
  size: 64

=head2 bb_signature

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 bb_signature_2up

  data_type: 'varchar'
  default_value: '40-80'
  is_nullable: 0
  size: 8

=head2 bb_signature_4up

  data_type: 'varchar'
  default_value: '40-80'
  is_nullable: 0
  size: 8

=head2 bb_twoside

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 bb_unbranded

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 bb_areaset_height

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 bb_areaset_width

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 bb_geometry_top_margin

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 bb_geometry_outer_margin

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 bb_fussy_last_word

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 bb_tex_emergencystretch

  data_type: 'integer'
  default_value: 30
  is_nullable: 0

=head2 bb_tex_tolerance

  data_type: 'integer'
  default_value: 200
  is_nullable: 0

=head2 bb_ignore_cover

  data_type: 'smallint'
  default_value: 0
  is_nullable: 1

=head2 bb_linespacing

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "custom_formats_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "site_id",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 16 },
  "format_name",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "format_description",
  { data_type => "text", is_nullable => 1 },
  "format_alias",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "format_code",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "format_priority",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "active",
  { data_type => "smallint", default_value => 1, is_nullable => 1 },
  "bb_format",
  {
    data_type => "varchar",
    default_value => "pdf",
    is_nullable => 0,
    size => 16,
  },
  "bb_epub_embed_fonts",
  { data_type => "smallint", default_value => 1, is_nullable => 1 },
  "bb_bcor",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "bb_beamercolortheme",
  {
    data_type => "varchar",
    default_value => "dove",
    is_nullable => 0,
    size => 32,
  },
  "bb_beamertheme",
  {
    data_type => "varchar",
    default_value => "default",
    is_nullable => 0,
    size => 32,
  },
  "bb_cover",
  { data_type => "smallint", default_value => 1, is_nullable => 1 },
  "bb_crop_marks",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "bb_crop_papersize",
  { data_type => "varchar", default_value => "a4", is_nullable => 0, size => 32 },
  "bb_crop_paper_height",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "bb_crop_paper_width",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "bb_crop_paper_thickness",
  {
    data_type => "varchar",
    default_value => "0.10mm",
    is_nullable => 0,
    size => 16,
  },
  "bb_division",
  { data_type => "integer", default_value => 12, is_nullable => 0 },
  "bb_fontsize",
  { data_type => "integer", default_value => 10, is_nullable => 0 },
  "bb_headings",
  { data_type => "varchar", default_value => 0, is_nullable => 0, size => 64 },
  "bb_imposed",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "bb_mainfont",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "bb_sansfont",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "bb_monofont",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "bb_nocoverpage",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "bb_coverpage_only_if_toc",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "bb_nofinalpage",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "bb_notoc",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "bb_impressum",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "bb_sansfontsections",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "bb_nobold",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "bb_secondary_footnotes_alpha",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "bb_start_with_empty_page",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "bb_continuefootnotes",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "bb_centerchapter",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "bb_centersection",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "bb_opening",
  {
    data_type => "varchar",
    default_value => "any",
    is_nullable => 0,
    size => 16,
  },
  "bb_papersize",
  {
    data_type => "varchar",
    default_value => "generic",
    is_nullable => 0,
    size => 32,
  },
  "bb_paper_height",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "bb_paper_width",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "bb_schema",
  {
    data_type => "varchar",
    default_value => "2up",
    is_nullable => 0,
    size => 64,
  },
  "bb_signature",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "bb_signature_2up",
  {
    data_type => "varchar",
    default_value => "40-80",
    is_nullable => 0,
    size => 8,
  },
  "bb_signature_4up",
  {
    data_type => "varchar",
    default_value => "40-80",
    is_nullable => 0,
    size => 8,
  },
  "bb_twoside",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "bb_unbranded",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "bb_areaset_height",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "bb_areaset_width",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "bb_geometry_top_margin",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "bb_geometry_outer_margin",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "bb_fussy_last_word",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "bb_tex_emergencystretch",
  { data_type => "integer", default_value => 30, is_nullable => 0 },
  "bb_tex_tolerance",
  { data_type => "integer", default_value => 200, is_nullable => 0 },
  "bb_ignore_cover",
  { data_type => "smallint", default_value => 0, is_nullable => 1 },
  "bb_linespacing",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</custom_formats_id>

=back

=cut

__PACKAGE__->set_primary_key("custom_formats_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<site_id_format_alias_unique>

=over 4

=item * L</site_id>

=item * L</format_alias>

=back

=cut

__PACKAGE__->add_unique_constraint("site_id_format_alias_unique", ["site_id", "format_alias"]);

=head2 C<site_id_format_code_unique>

=over 4

=item * L</site_id>

=item * L</format_code>

=back

=cut

__PACKAGE__->add_unique_constraint("site_id_format_code_unique", ["site_id", "format_code"]);

=head1 RELATIONS

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


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2021-11-20 08:11:38
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:9t0wL26LGe/Bzs3O9YiHQw

use Try::Tiny;
use AmuseWikiFarm::Log::Contextual;
use AmuseWikiFarm::Archive::BookBuilder;
use File::Temp;
use Path::Tiny;

sub update_from_params {
    my ($self, $params) = @_;
    my $return = { error => '' };
    try {
        foreach my $meta (qw/format_description format_name/) {
            if (defined $params->{$meta}) {
                $self->$meta(delete $params->{$meta});
            }
            my $bb = $self->bookbuilder;
            $bb->import_profile_from_params(%$params);
            my $out = $bb->serialize_profile;
            foreach my $k (keys %$out) {
                my $method = 'bb_' . $k;
                $self->$method($out->{$k});
            }
        }
        $self->update if $self->is_changed;
    } catch {
        $return->{error} = $_;
        log_error { $return->{error} };
    };
    return $return;
}

sub bookbuilder {
    my ($self) = @_;
    my $bb = AmuseWikiFarm::Archive::BookBuilder->new(site => $self->site,
                                                      is_single_file => 1,
                                                      single_file_extension => $self->extension,
                                                      custom_format_id => $self->code,
                                                     );
    foreach my $accessor ($bb->profile_methods) {
        my $column = 'bb_' . $accessor;
        try {
            $bb->$accessor($self->$column);
        } catch {
            my $error = $_;
            log_warn { $column . ' => ' . $error->message };
        };
    }
    return $bb;
}

sub valid_alias {
    my $self = shift;
    my $alias = $self->format_alias;
    return unless $alias;
    my %permitted = (
                     pdf => 1,
                     'sl.pdf' => 1,
                     'a4.pdf' => 1,
                     'lt.pdf' => 1,
                    );
    if ($permitted{$alias}) {
        return $alias;
    }
    else {
        return;
    }
}

sub install_aliased_file {
    my ($self, $muse) = @_;
    return unless $muse;
    if (my $alias = $self->valid_alias) {
        my $src = path($muse->filepath_for_ext($self->extension));
        # it's perfectly fine if the src doesn't exist. We just ensure
        # that if present, the alias is installed.
        if ($src->exists) {
            my $dest = path($muse->filepath_for_ext($alias));
            try {
                $src->copy($dest) or die $!;
                $dest->touch($src->stat->mtime);
            } catch {
                my $err = $_;
                log_error { "Couldn't copy $src to $dest $_" };
            };
        }
    }
}

# this is the reverse of install_aliased_file. We need this because on
# migration we have the .sl.pdf etc., but we're missing the the
# cXX.pdf. The first compile run will nuke them and then we will not
# have the cXXX.pdf to restore them from. All this idiocy could have
# been spared if the compiler didn't nuke the pdf, but at the time it
# made kind of sense to avoid having stale files around.

sub save_canonical_from_aliased_file {
    my ($self, $file) = @_;
    return unless $file;
    return unless $self->valid_alias;
    if ($file =~ m/(.+)\.muse\z/) {
        $file = $1;
    }
    else {
        log_error { "spurious $file passed" };
        return;
    }
    my $src  = path($file . '.' . $self->valid_alias);
    my $dest = path($file . '.' . $self->extension);
    if ($src->exists and !$dest->exists) {
        log_info { "Copying $src into $dest, which is missing" };
        try {
            $src->copy($dest) or die $!;
            $dest->touch($src->stat->mtime);
        } catch {
            my $err = $_;
            log_error { "Couldn't copy $src to $dest $_" };
        };
    }
    elsif ($src->exists and $dest->exists) {
        log_debug { "Nothing to do $src existing and $dest exists" }
    }
    else {
        log_debug { "$src doesn't exist" };
    }
}

sub compile {
    my ($self, $muse, $logger) = @_;
    my $bb = $self->bookbuilder;
    log_debug { "Compiling " . $self->bb_format  };
    Dlog_debug { "BB $_" } $bb->as_job;
    if (my $res = $bb->compile($logger, $muse)) {
        my ($tex) = $bb->bbdir->children(qr{\.tex\z});
        if ($tex) {
            log_debug { "Copying $tex to " . $muse->filepath_for_ext($self->tex_extension) };
            $tex->copy($muse->filepath_for_ext($self->tex_extension));
        }
        $self->install_aliased_file($muse);
        return $res;
    }
    else {
        return;
    }
}

sub remove_stale_files {
    my ($self, $muse) = @_;
    unless ($muse) {
        log_error { "remove_stale_files called without argument! " };
        return;
    }
    my $ret = 0;
    foreach my $ext ($self->extensions) {
        my $f = path($muse->filepath_for_ext($ext));
        if ($f->exists) {
            log_info { "Removing stale file $f" };
            try {
                $f->remove;
                $ret++;
            } catch {
                my $err = $_;
                log_error { "Error removing $f, $err" };
            };
        }
        else {
            # this is to be expected.
            log_debug { "$f does not exist" };
        }
    }
    return $ret;
}

sub needs_compile {
    my ($self, $muse) = @_;
    return unless $muse;
    my $src = $muse->filepath_for_ext('muse');
    log_debug { "checking $src" };
    unless (-f $src) {
        log_error { "$src doesn't exist but needs_compile was called" };
        return;
    }
    if ($self->is_slides and !$muse->slides) {
        log_debug { "Text doesn't define slides, so not needed" };
        return;
    }
        my $expected = $muse->filepath_for_ext($self->valid_alias || $self->extension);
        log_debug { "$expected exist" };
        if (-f $expected) {
            log_debug { "$src and $expected exist" };
            if ((stat($expected))[9] >= (stat($src))[9]) {
                log_debug { "$expected and $src exist" .  (stat($expected))[9] . '>=' . (stat($src))[9] };
                return 0;
            }
        }
    return 1;
}

sub is_epub {
    return shift->bb_format eq 'epub';
}

sub is_pdf {
    return !shift->is_epub;
}

sub is_slides {
    return shift->bb_format eq 'slides';
}

sub create_format_code {
    my $self = shift;
    unless ($self->format_code) {
        my $site = $self->site;
        log_info { $self->code . " is without format code" };
        my $id = $self->custom_formats_id;
        while ($site->custom_formats->search({ format_code => "c" . $id })->count) {
            log_info { "c $id already exists on this site" };
            $id++;
        }
        $self->update({ format_code => "c" . $id });
    }
    return $self->code;
}

sub code {
    my $self = shift;
    my $code = $self->format_code;
    if ($code) {
        return $code;
    }
    else {
        return 'c' . $self->custom_formats_id;
    }
}

sub tex_extension {
    my $self = shift;
    my $code = $self->custom_formats_id;
    return $self->code . '.tex';
}

sub extension {
    my $self = shift;
    return $self->code . ( $self->is_epub ? ".epub" : ".pdf" );
}

sub extensions {
    my $self = shift;
    my $code = $self->code;
    my @exts = map { $code . "." . $_ } (qw/epub pdf tex/);
    if (my $alias = $self->valid_alias) {
        push @exts, $alias;
    }
    return @exts;
}

sub is_imposed_pdf {
    my $self = shift;
    return $self->bb_imposed;
}

sub sync_from_site {
    my $self = shift;
    my $site = $self->site;
    my %bb_values = $site->bb_values;
    foreach my $k (keys %bb_values) {
        my $cf_method = "bb_$k";
        $self->$cf_method($bb_values{$k});
    }
    $self->update if $self->is_changed;
    $self->enforce_standard_fields;
    return $self;
}

sub enforce_standard_fields {
    my $self = shift;
    my @changed;
    if (my $aliased = $self->valid_alias) {
        my %fixed = $self->site->fixed_formats_definitions;
        if (my ($def) = grep { $_->{initial}->{format_alias} eq $aliased } values %fixed) {
            foreach my $k (keys %{$def->{fields}}) {
                # we know we don't have undef in Site method here
                my $format_value = $self->$k || 0;
                if ($format_value ne $def->{fields}->{$k}) {
                    push @changed, $k;
                    $self->$k($def->{fields}->{$k});
                }
            }
            $self->update if $self->is_changed;
        }
        else {
            Dlog_error { "$aliased is without a format definition in $_" } \%fixed;
        }
    }
    return @changed;
}

sub sync_site_format {
    my $self = shift;
    if (my $alias = $self->valid_alias) {
        my $method = $alias;
        $method =~ s/\./_/;
        log_info { "Updating site $method to " . $self->active };
        $self->site->update({ $method => $self->active });
    }
}

__PACKAGE__->meta->make_immutable;
1;
