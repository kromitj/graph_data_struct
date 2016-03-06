require_relative 'node_set'

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

  def add_node
    @node_set.add_node
  end

  def add_edge(node1_id, node2_id)
    @node_set.find_node(node1_id).add_edge(@node_set.find_node(node2_id))
  end

  def show_node_edges(node_id)
    @node_set.find_node(node_id).show_node_edges
  end

  def show_vertex_set
    vertex_set = 'V = {'
    @node_set.node_instances.each do |node|
      vertex_set << "#{node.node_id}, "
    end 
    p vertex_set << "}"
  end

  def show_edge_set
    edge_set = [['E = {']]
    @node_set.node_instances.each do |node|
      node.edges.edge_instances.each do |edge|
          unless edge_set.include?("#{edge.nodes[0].node_id}|#{edge.nodes[1].node_id}, ")
            edge_set << "#{edge.nodes[0].node_id}|#{edge.nodes[1].node_id}, "
          end
      end
    end
    edge_set << "}"
    p edge_set.join("")
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