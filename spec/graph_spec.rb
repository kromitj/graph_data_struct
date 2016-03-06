require_relative '../source/edge'
require_relative '../source/node'
require_relative '../source/graph'

describe Graph do
  let (:node_one) { Node.new }
  let (:node_two) { Node.new }
  let (:edge_one) { Edge.new(node_one, node_two) }
  let (:graph_one) { Graph.new }

  it 'initialize an instance of the Graph class' do
    expect(graph_one.class).to eq Graph
  end

  it 'initializes with a instance var node_set:NodeSet' do
    expect(graph_one.node_set.class).to eq NodeSet
  end

  it 'able to add a node to node_set' do
    graph_one.node_set.add_node
    expect(graph_one.node_set.node_instances.count).to eq 1
  end

  it 'new node is of type Node' do
    graph_one.node_set.add_node
    expect(graph_one.node_set.node_instances.first.class).to eq Node
  end

  it 'able to remove a node from node_set' do
    graph_one.node_set.add_node
    graph_one.node_set.add_node
    node_id = graph_one.node_set.node_instances.last.node_id
    p "node id: #{node_id}"
    graph_one.node_set.remove_node(node_id)
    expect(graph_one.node_set.node_instances.count).to eq 1
  end
end
