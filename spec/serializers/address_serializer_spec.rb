# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AddressSerializer do
  let(:address) do
    CepHub::Address.new(
      cep: '66075-125',
      street: 'Travessa Mauriti',
      neighborhood: 'Marco',
      city: 'Belém',
      state: 'PA',
      ibge_code: '1501402'
    )
  end

  it 'gera hash padronizado' do
    json = described_class.as_json(address)
    expect(json).to include(:cep, :street, :city, :state)
    expect(json[:cep]).to eq('66075-125')
  end
end
