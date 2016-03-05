require_relative 'node'

class Edge
  @@edge_instances = 0

  attr_accessor :edge_id, :nodes
  def initialize(nodeA, nodeB)
    @@edge_instances += 1
    @edge_id = Edge.edge_instances
    @nodes = Array.new()
    @nodes << nodeA
    @nodes << nodeB
  end

  def self.edge_instances
    @@edge_instances
  end
end
