# frozen_string_literal: true

# Decorate Repo's creation with default ROM.Container
module HasContainer
  def self.included(klass)
    klass.class_eval do
      def self.new(container = ROM_CONTAINER)
        super(container)
      end
    end
  end
end
