# frozen_string_literal: true

require_relative 'types'

module CepHub
  # Entidade de domínio
  class Address < Dry::Struct
    transform_keys(&:to_sym)

    attribute :cep,          Types::String.constrained(format: /\A\d{5}-?\d{3}\z/)
    attribute :street,       Types::String.optional
    attribute :neighborhood, Types::String.optional
    attribute :city,         Types::String
    attribute :state,        Types::String.constrained(min_size: 2, max_size: 2)
    attribute :ibge_code,    Types::String.optional
  end
end
