# frozen_string_literal: true

class CategoryRepo < ROM::Repository[:categories]
  include HasContainer
  commands :create, update: :by_pk, delete: :by_pk
  relations :parameters
end
