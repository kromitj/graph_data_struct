require_relative 'edge.rb'
require_relative 'node.rb'

class EdgeSet
  attr_accessor :edge_instances

  def initialize
    @edge_instances = Array.new
  end

  def add_edge(node1, node2)
    @edge_instances << Edge.new(node1, node2)
    p "new edge id: #{@edge_instances.last.edge_id}"
  end

  def copy_edge(edge_to_copy)
    @edge_instances << edge_to_copy
  end

  def remove_edge(edge_rm_id)
    index_of_edge = find_edge(edge_rm_id)
    @edge_instances.delete_at(index_of_edge)
  end

  def show_edge(edge_id)
    index_of_edge = find_edge(edge_id)
    p "Show Edge:" 
    p "Id: #{@edge_instances[index_of_edge].edge_id}"    
    @edge_instances[index_of_edge]
  end

  def show_edges
    @edge_instances.each { |edge| p edge.show_edge}
    return nil
  end

  def find_edge(edge_id)
    index_of_edge = nil
    @edge_instances.each_with_index { |edge, index| index_of_edge = index if edge.edge_id == edge_id }
    p "edge not in set" if index_of_edge == nil
    return index_of_edge
  end
end
