require 'spec_helper'
require_relative '../../algorithms/bubble_sort'

describe 'bubble_sort' do it 'Deve retornar a lista ordenada' do
  ordarray = bubble_sort([64, 34, 25, 12, 22, 11, 90])
  expect(ordarray).to eq([11,12,22,25,34,64,90])
  end
end
