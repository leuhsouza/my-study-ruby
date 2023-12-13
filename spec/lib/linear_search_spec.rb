require 'spec_helper'
require_relative 'linear_search'

describe 'linear_search' do
  describe  '#linear_search' do it 'deve retornar o valor procurado' do
    resultado = linear_search([1,4,5,6,3],5)
    expect(resultado).to eq(2)
  end
end