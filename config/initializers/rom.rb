# frozen_string_literal: true

ROM_CONFIG = ROM::Configuration.new(:sql, ENV['DATABASE_URL'], extensions: [:pg_json])
ROM_CONFIG.auto_registration('../../lib', namespace: 'Persistence')
