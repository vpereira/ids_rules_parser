require 'simplecov'
SimpleCov.start
require File.expand_path File.join(File.dirname(__FILE__),"..","lib","ids_rules_parser")


def get_fixture(filename)
  File.open(File.expand_path(File.join(File.dirname(__FILE__),"..","test/rules",filename)))
end
