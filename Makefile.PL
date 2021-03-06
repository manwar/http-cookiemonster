# This file was automatically generated by Dist::Zilla::Plugin::MakeMaker v6.012.
use strict;
use warnings;

use 5.006;

use ExtUtils::MakeMaker;

my %WriteMakefileArgs = (
  "ABSTRACT" => "Easy read/write access to your jar of HTTP::Cookies",
  "AUTHOR" => "Olaf Alders <olaf\@wundercounter.com>",
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => 0
  },
  "DISTNAME" => "HTTP-CookieMonster",
  "LICENSE" => "perl",
  "MIN_PERL_VERSION" => "5.006",
  "NAME" => "HTTP::CookieMonster",
  "PREREQ_PM" => {
    "Carp" => 0,
    "HTTP::Cookies" => 0,
    "Moo" => "1.000003",
    "Safe::Isa" => 0,
    "Scalar::Util" => 0,
    "Sub::Exporter" => 0,
    "URI::Escape" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "TEST_REQUIRES" => {
    "Data::Serializer" => 0,
    "ExtUtils::MakeMaker" => 0,
    "File::Spec" => 0,
    "Test::More" => 0,
    "Test::Most" => 0
  },
  "VERSION" => "0.10",
  "test" => {
    "TESTS" => "t/*.t t/cookie/*.t"
  }
);


my %FallbackPrereqs = (
  "Carp" => 0,
  "Data::Serializer" => 0,
  "ExtUtils::MakeMaker" => 0,
  "File::Spec" => 0,
  "HTTP::Cookies" => 0,
  "Moo" => "1.000003",
  "Safe::Isa" => 0,
  "Scalar::Util" => 0,
  "Sub::Exporter" => 0,
  "Test::More" => 0,
  "Test::Most" => 0,
  "URI::Escape" => 0,
  "strict" => 0,
  "warnings" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);
