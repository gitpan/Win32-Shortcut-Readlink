
# This file was automatically generated by Dist::Zilla::Plugin::ModuleBuild v5.015.
use strict;
use warnings;

use Module::Build 0.3601;
use lib qw{inc}; use My::ModuleBuild;

my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Make readlink work with shortcuts",
  "dist_author" => [
    "Graham Ollis <plicease\@cpan.org>"
  ],
  "dist_name" => "Win32-Shortcut-Readlink",
  "dist_version" => "0.02",
  "license" => "perl",
  "module_name" => "Win32::Shortcut::Readlink",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "perl" => "5.008000"
  },
  "script_files" => [],
  "test_requires" => {
    "Test::More" => "0.82"
  }
);


my %fallback_build_requires = (
  "Module::Build" => "0.3601",
  "Test::More" => "0.82"
);


unless ( eval { Module::Build->VERSION(0.4004) } ) {
  delete $module_build_args{test_requires};
  $module_build_args{build_requires} = \%fallback_build_requires;
}

my $build = My::ModuleBuild->new(%module_build_args);

$build->create_build_script;
