#!/usr/bin/env ruby

require_relative 'bootstrap_ar'
database = ENV['PA_ENV'] || 'development'
connect_to database

# ARGV = [add,shoot]
command = ARGV[0]

if command == "add"
  shoot_name = ARGV[1]
  shoot