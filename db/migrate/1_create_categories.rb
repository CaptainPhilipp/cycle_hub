# frozen_string_literal: true

require_relative '../migrations_helper.rb'

GATEWAY.migration do
  change do
    create_table :categories do
      primary_key :id

      column :short_title, String, index: true, null: false
      column :title_ru, String
      column :title_en, String
      column :depth,    Integer
    end
  end
end
