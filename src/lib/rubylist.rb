#!/usr/bin/env ruby
require 'colorize'
require 'colorized_string'
require "tty-prompt"
require 'terminal-table'

require_relative 'rubylist/cli'

APP_ROOT = File.expand_path(File.dirname(__FILE__))

cli = Home::Controller.new
cli.init