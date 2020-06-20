#!/usr/bin/env sh

export RUBY_VERSION=2.7.1
export RVM_BINARY="/usr/local/rvm/bin/rvm"
export GEM_BINARY="/usr/local/rvm/rubies/ruby-$RUBY_VERSION/bin/gem"
export BUNDLE_BINARY="/usr/local/rvm/rubies/ruby-$RUBY_VERSION/bin/bundle"

$RVM_BINARY use $RUBY_VERSION
$GEM_BINARY install rubygems-bundler
$GEM_BINARY regenerate_binstubs

$BUNDLE_BINARY install