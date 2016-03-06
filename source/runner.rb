require_relative 'edge'
require_relative 'node'
require_relative 'edge_set'
require_relative 'node_set'
require_relative 'graph'

node_set = NodeSet.new
node_set.add_node
node_set.add_node
node_set.show_nodes
node_set.find_node(1).add_edge(2)
node_set.find_node(1).show_node_edges
node_set.find_node(1).remove_edge(1)
node_set.find_node(1).show_node_edges
node_set.find_node(1).add_edge(2)
node_set.find_node(1).show_node_edges




