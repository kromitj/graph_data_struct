require_relative '../source/edge'
require_relative '../source/node'

describe Edge do
  let (:node_one) { Node.new }
  let (:node_two) { Node.new }
  let (:edge_one) { Edge.new(node_one, node_two) }

  it 'initialize an instance of the Edge class' do
    expect(edge_one.class).to eq Edge
  end
  it 'initializes with a class instance var edge_id#Int' do
    expect(edge_one.edge_id.class).to eq Fixnum
  end

  it 'initializes with a instance var nodes#Array' do
    expect(edge_one.nodes.class).to eq Array
  end

  it 'has two nodes' do
    expect(edge_one.nodes.count).to eq 2
  end

  it 'nodes variable includes elements of type Node' do
    expect(edge_one.nodes.first.class).to eq Node
  end

  it 'able to access nodes content' do
    expect(edge_one.nodes.first.node_id.class).to eq Fixnum
  end
end
