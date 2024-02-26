require 'spec_helper'
require_relative '../../algorithms/minimum_spanning'


describe 'minimum_spanning' do
  describe '#minimum_spanning' do
    it "Retorna a MST correta para um grafo com pesos inteiros" do
      graph = Graph.new

      graph.add_vertex('A')
      graph.add_vertex('B')
      graph.add_vertex('C')
      graph.add_vertex('D')

      graph.add_edge('A', 'B', 1)
      graph.add_edge('A', 'C', 4)
      graph.add_edge('B', 'C', 5)
      graph.add_edge('B', 'D', 3)
      graph.add_edge('B', 'D', 2)

      mst_esperada = [
        ['A', 'B', 1],
        ['B', 'D', 2],
        ['A', 'C', 4]
      ]
      expect(graph.kruskal_mst).to eq(mst_esperada)
    end
    it "retorna a MST correta para um grafo com pesos diferentes" do
      graph = Graph.new

      graph.add_vertex('A')
      graph.add_vertex('B')
      graph.add_vertex('C')
      graph.add_vertex('D')

      graph.add_edge('A', 'B', 2)
      graph.add_edge('A', 'C', 3)
      graph.add_edge('B', 'C', 4)
      graph.add_edge('B', 'D', 1)
      graph.add_edge('C', 'D', 5)

      mst_esperada = [
        ['B', 'D', 1],
        ['A', 'B', 2],
        ['A', 'C', 3]
      ]

      expect(graph.kruskal_mst).to eq(mst_esperada)
    end
    it "retorna a MST correta para um grafo com ciclo" do
      graph = Graph.new

      graph.add_vertex('A')
      graph.add_vertex('B')
      graph.add_vertex('C')
      graph.add_vertex('D')

      graph.add_edge('A', 'B', 1)
      graph.add_edge('B', 'C', 2)
      graph.add_edge('C', 'D', 3)
      graph.add_edge('D', 'A', 4)

      mst_esperada = [
        ['A', 'B', 1],
        ['B', 'C', 2],
        ['C', 'D', 3]
      ]

      expect(graph.kruskal_mst).to eq(mst_esperada)
    end
    it "retorna a MST correta para um grafo disconexo" do
      graph = Graph.new

      graph.add_vertex('A')
      graph.add_vertex('B')
      graph.add_vertex('C')
      graph.add_vertex('D')

      graph.add_edge('A', 'B', 1)
      graph.add_edge('C', 'D', 2)

      mst_esperada = [
        ['A', 'B', 1],
        ['C', 'D', 2]
      ]

      expect(graph.kruskal_mst).to eq(mst_esperada)
    end
  end
end