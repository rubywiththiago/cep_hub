# frozen_string_literal: true

module AddressSerializer # rubocop:disable Style/Documentation
  module_function

  # => Hash
  def as_json(address)
    {
      cep: address.cep,
      street: address.street,
      neighborhood: address.neighborhood,
      city: address.city,
      state: address.state,
      ibge_code: address.ibge_code
    }.compact
  end
end
