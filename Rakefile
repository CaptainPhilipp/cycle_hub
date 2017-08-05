# frozen_string_literal: true

require_relative 'tasks/rake_tasks'
require 'rom/sql/rake_task'

begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
  task default: :spec
rescue LoadError
  nil
end

task default: :spec

namespace :db do
  task setup: :environment do
    require 'rom/sql'
    ROM::SQL::RakeSupport.env = ROM::Configuration.new(:sql, ENV['DATABASE_URL'])
  end
end
