require spec_helper
require_relative '../../algorithms/minimum_sum'

describe 'minimum_sum' do 
    describe '#minimum_sum' do it 'deve retornar a soma minima do array' do
    listm = minimum_sum([7, 2, 3, 4, 5, 6])
    expect(listm) to eq(10)
end


    #min_sum([2, 4, 1, 3])