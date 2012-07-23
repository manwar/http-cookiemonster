#!/usr/bin/env perl

use Test::More;

use Data::Printer;
use HTTP::CookieMonster;
use HTTP::Cookies;
use WWW::Mechanize;

my $cookies = HTTP::Cookies->new;
my $monster = HTTP::CookieMonster->new( cookie_jar => $cookies );

my $mech = WWW::Mechanize->new;
$mech->get( 'http://www.nytimes.com' );

$monster = HTTP::CookieMonster->new( cookie_jar => $mech->cookie_jar );
ok( $monster,              "got a monster" );
ok( $monster->all_cookies, "all cookies" );
ok( $monster->cookie('RMID'), "got a single cookie" );

#diag p $mech->cookie_jar;

done_testing();
