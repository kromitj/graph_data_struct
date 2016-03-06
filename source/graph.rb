require_relative 'edge'
require_relative 'node'
require_relative 'node_set'
require_relative 'edge_set'
class Graph
  attr_accessor :node_set
  def initialize
    @node_set = NodeSet.new()
  end

  def show_node_set
    p 'Graphs Nodes:'
    @node_set.node_instances.each { |node| node.show_node}
    return nil
  end

end
# load 'graph.rb'
# graph = Graph.new
# graph.node_set.add_node
# graph.node_set.add_node
# graph.node_set.add_node
# graph.node_set.add_node
# graph.node_set.find_node(1).add_edge(graph.node_set.find_node(2))
# graph.node_set.find_node(1).add_edge(graph.node_set.find_node(4))
# graph.node_set.find_node(1).show_node_edges
# graph.node_set.find_node(2).show_node_edges