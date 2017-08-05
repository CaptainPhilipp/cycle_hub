# frozen_string_literal: true

require_relative '../migrations_helper.rb'

GATEWAY.migration do
  change do
    create_table :parameters do
      primary_key :id

      column :title_ru, String
      column :title_en, String
      column :values_type, String, null: false
    end
  end
end
