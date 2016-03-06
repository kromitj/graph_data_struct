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

  it 'initializes with a instance var edge_set:Array' do
    expect(graph_one.edge_set.class).to eq Array
  end

  it 'able to add a node to node_set' do
    graph_one.add_node
    expect(graph_one.node_set.count).to eq 1
  end

  it 'new node if of type Node' do
    graph_one.add_node
    expect(graph_one.node_set.first.class).to eq Node
  end
  it 'able to remove a node from node_set' do
    graph_one.add_node
    graph_one.add_node
    node_id = graph_one.node_set.last.node_id
    graph_one.remove_node(node_id)
    expect(graph_one.node_set.count).to eq 1
  end


end
