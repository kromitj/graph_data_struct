require_relative 'graph'

graph = Graph.new
graph.node_set.add_node
graph.node_set.add_node
graph.node_set.add_node
graph.node_set.add_node
graph.node_set.find_node(1).add_edge(graph.node_set.find_node(2))
graph.node_set.find_node(1).add_edge(graph.node_set.find_node(4))
graph.node_set.find_node(1).show_node_edges
graph.node_set.find_node(2).show_node_edges




