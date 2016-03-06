require_relative 'edge_set'

class Node
   @@node_instances = 0

  attr_accessor :node_id, :edges

  def initialize
    @edges = EdgeSet.new()
    @@node_instances += 1
    @node_id = @@node_instances
  end

  def add_edge(other_node)
    unless @edges.edge_exists?(self, other_node)
      @edges.add_edge(self, other_node)
      add_remote_edge(other_node, self)
    end
  end

  def add_remote_edge(other_node, this_node)
    other_node.edges.copy_edge(this_node.edges.edge_instances.last)
  end

  def remove_edge(edge_id)
    @edges.remove_edge(edge_id)
  end

  def show_node
    p "Node Id: #{node_id}"
    return nil
  end

  def show_node_edges
    p "Node Id: #{node_id} has these edges"
    @edges.edge_instances.each do |edge|
      p edge.show_edge_nodes
    end
    return nil
  end

  def self.node_instances
    @@node_instances
  end

end

