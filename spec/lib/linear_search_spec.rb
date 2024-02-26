require 'spec_helper'
require_relative

describe 'linear_search' do
  describe  '#linear_search' do it 'deve retornar o valor procurado' do
    position = linear_search([1,4,5,6,3],5)
    expect(position).to eq(2)
  end
  it 'valor não encontrado' do
    position = linear_search([2,3,6,2,4],8)
    expect(position).to eq(nil)
    end
  end
end