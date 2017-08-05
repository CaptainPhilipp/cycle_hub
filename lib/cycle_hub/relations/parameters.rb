# frozen_string_literal: true

class Parameters < ROM::Relation[:sql]
  schema(infer: true) do
    attribute :values_type, Types::String, read: Types.Constructor(Symbol, &:to_sym)
  end
end
