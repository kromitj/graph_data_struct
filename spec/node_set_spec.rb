require_relative '../source/node_set'

describe NodeSet do
  let (:node_one) { Node.new }
  let (:node_two) { Node.new }
  let (:node_set) { NodeSet.new}

  it 'initialize an instance of the NodeSet class' do
    expect(node_set.class).to eq NodeSet
  end

  it 'initializes with a instance var node_instances:Array' do
    expect(node_set.node_instances.class).to eq Array
  end

  it 'able to add a node to node_instances' do
    node_set.add_node
    expect(node_set.node_instances.count).to eq 1
  end

  it 'new node of type Node' do
    node_set.add_node
    expect(node_set.node_instances.first.class).to eq Node
  end
  it 'able to remove a node from node_set' do
    node_set.add_node
    node_set.add_node
    node_id = node_set.node_instances.last.node_id
    node_set.remove_node(node_id)
    expect(node_set.node_instances.count).to eq 1
  end
end
