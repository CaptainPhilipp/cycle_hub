# frozen_string_literal: true

require 'hanami/rake_helper'

# monkeypatching for remove 'rake db:migrate' task
module Hanami
  class RakeHelper
    def install
      desc 'Load the full project'

      install_task_environment

      install_task_assets
    end

    def install_task_environment
      task :environment do
        require 'hanami/environment'
        Hanami::Environment.new.require_project_environment
        Components.resolve('all')
      end
    end

    def install_task_assets
      namespace :assets do
        task :precompile do
          # rubocop:disable Style/SpecialGlobalVars
          system('bundle exec hanami assets precompile') || exit($?.exitstatus)
          # rubocop:enable Style/SpecialGlobalVars
        end
      end
    end
  end
end

Hanami::RakeHelper.install_tasks
