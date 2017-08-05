# frozen_string_literal: true

class ParameterRepo < ROM::Repository[:parameters]
  include HasContainer
  commands :create, update: :by_pk, delete: :by_pk
  relations :categories
end
