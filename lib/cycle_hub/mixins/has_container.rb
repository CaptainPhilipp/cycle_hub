# frozen_string_literal: true

module HasContainer
  def self.included(klass)
    klass.class_eval do
      def self.new(container = ROM_CONTAINER)
        super(container)
      end
    end
  end
end
