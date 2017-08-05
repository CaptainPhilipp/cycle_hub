# frozen_string_literal: true

require 'rake'
require 'rom/sql'
require 'rom/sql/rake_task'

begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
  task default: :spec
rescue LoadError
  nil
end

namespace :db do
  task :setup do
  end
end
