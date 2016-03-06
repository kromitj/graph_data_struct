require_relative '../source/node'

describe Node do
  let (:node_one) { Node.new }
  let (:node_two) { Node.new}
  it 'initialize an instance of the Node class' do
    expect(node_one.class).to eq Node
  end

  it 'initializes with a class instance var node_instances#Int' do
    expect(node_one.node_id).not_to eq 0
  end

  it 'initializes with a instance var edges#EdgeSet' do
    expect(node_one.edges.class).to eq EdgeSet
  end

  it 'able to access the node id' do
    expect(node_one.node_id.class).to eq Fixnum
  end

  it 'able to add an edge to edges' do    
    node_one.add_edge(node_two)
    expect(node_one.edges.edge_instances.count).to eq 1
  end

  it 'able to remove an edge to edges' do
    node_one.add_edge(node_two)
    edge_to_rm = node_one.edges.edge_instances.last
    node_one.remove_edge(edge_to_rm.edge_id)
    expect(node_one.edges.edge_instances.include?(edge_to_rm)).to eq false
  end
end
