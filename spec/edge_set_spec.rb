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

  it 'able to remove an edge from edge_set' do
    edge_set.add_edge(node_one, node_two)
    edge_id = edge_set.edge_instances.last.edge_id
    edge_set.remove_edge(edge_id)
    expect(edge_set.edge_instances.count).to eq 0
  end

  it 'able to show a specific edge' do
    edge_set.add_edge(node_one, node_two)    
    expect(edge_set.show_edge(edge_set.edge_instances[0].edge_id).class).to eq Edge
  end
  
end
