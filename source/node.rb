class Node
   @@node_instances = 0

  attr_accessor :node_id, :edges

  def initialize
    @edges = Array.new()
    @@node_instances += 1
    @node_id = Node.node_instances
  end

  def add_edge(other_node)
    @edges << other_node
  end

  def remove_edge(other_node)
    @edges.delete(other_node)
  end

  def self.node_instances
    @@node_instances
  end

end

