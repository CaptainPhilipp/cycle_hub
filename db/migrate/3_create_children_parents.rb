# frozen_string_literal: true

require_relative '../migrations_helper.rb'

GATEWAY.migration do
  change do
    create_table :children_parents do
      primary_key :id

      foreign_key :children_category, :categories, index: true
      foreign_key :parent_category,   :categories, index: true

      foreign_key :children_parameter, :parameters, index: true
    end
  end
end
