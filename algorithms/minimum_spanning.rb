class Graph
    attr_acesssor :vertices, :edges

    def initialize
        @vertices []
        @edge []
    end

    def add_vertex(vertex)
        @vertices << vertex
    end

    def add_edge(vertex1,vertex2,weight)
        @edges << [vertex1, vertex2,weight]
    end

    def kruskal_mst
        result = []
        sorted.edges = @edges.sort_by {[edge | edge[2]]}
        union_find = {}
        @vertices.each{|vertex| union_find[vertex]=vertex}

        sorted_edges.each do |edge|
            root1 = find_root(union_find, edge[0])
            root2 = find_root(union_find, edge[1])
            
            if root1 != root2
                result << edge
                union(union.find, root1, root2)
            end
        end
        

        result
    end

    def to_s
        "Vertices: #{@vertices}\nEdges: #{@edges}"
    end

    private

    def find_root(union_find, vertex)
        while union_find[vertex] != vertex
            vertex = union_find[vertex]
        end
        vertex
    end

    def union(union_find,root1,root2)
        union_find[root1] = root2
    end
end


graph = Graph.new

graph.add_vertex('A')
graph.add_vertex('B')
graph.add_vertex('C')
graph.add_vertex('D')

graph.add_edge('A', 'B',1)
graph.add_edge('A', 'C',4)
graph.add_edge('B', 'C',5)
graph.add_edge('B', 'D',3)
graph.add_edge('B', 'D',2)

puts graph.to_s

mst = graph.kruskal_mst
puts "Minimum Spanning Tree:"
mst.each {|edge| puts "#{edge[0]} - #{edge[1]}: #{edge[2]}"}










