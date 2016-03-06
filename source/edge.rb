
class Edge
  @@edge_instances = 0

  attr_accessor :edge_id, :nodes

  def initialize(nodeA, nodeB)
    @@edge_instances += 1
    @edge_id = @@edge_instances
    p "edge instance: #{@edge_id}"
    @nodes = Array.new()
    @nodes << nodeA
    @nodes << nodeB
  end

  def show_edge_nodes
    p "          Edge Id: #{edge_id} has these nodes"
    p "                Nodes = #{@nodes[0].node_id} & #{@nodes[1].node_id} "
    return nil
  end

  def self.edge_instances
    @@edge_instances
  end
end
