# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CepHub::Address do
  subject(:address) do
    described_class.new(
      cep: '66075-125',
      street: 'Travessa Mauriti',
      neighborhood: 'Marco',
      city: 'Belém',
      state: 'PA',
      ibge_code: '1501402'
    )
  end

  it 'é válido com dados corretos' do
    expect(address.city).to eq('Belém')
  end

  it 'explode com CEP inválido' do
    expect do
      described_class.new(cep: '123', city: 'X', state: 'PA')
    end.to raise_error(Dry::Struct::Error)
  end
end
