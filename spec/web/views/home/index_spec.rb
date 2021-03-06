# frozen_string_literal: true

require_relative '../../../../apps/web/views/home/index'

RSpec.xdescribe Web::Views::Home::Index do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/home/index.html.slim') }
  let(:view)      { described_class.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'Exposes #foo' do
    pending 'This is an auto-generated test. Edit it and add your own tests.'

    # Example
    expect(view.foo).to eq exposures.fetch(:foo)
  end
end
