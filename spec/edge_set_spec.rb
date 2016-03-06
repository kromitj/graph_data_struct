require_relative '../source/edge'
require_relative '../source/node'
require_relative '../source/edge_set'

describe EdgeSet do
  let (:node_one) { Node.new }
  let (:node_two) { Node.new }
  let (:edge_set) { EdgeSet.new}

  it 'initialize an instance of the NodeSet class' do
    expect(edge_set.class).to eq EdgeSet
  end

  it 'initializes with a instance var edge_instances:Array' do
    expect(edge_set.edge_instances.class).to eq Array
  end

  it 'able to add a edge to edge_instances' do
    edge_set.add_edge(node_one, node_two)
    expect(edge_set.edge_instances.count).to eq 1
  end

  # it 'new node of type Node' do
  #   node_set.add_node
  #   expect(node_set.node_instances.first.class).to eq Node
  # end
  # it 'able to remove a node from node_set' do
  #   node_set.add_node
  #   node_set.add_node
  #   node_id = node_set.node_instances.last.node_id
  #   node_set.remove_node(node_id)
  #   expect(node_set.node_instances.count).to eq 1
  # end
end
