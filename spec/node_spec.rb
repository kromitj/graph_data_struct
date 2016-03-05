require_relative '../source/node'

describe Node do
  let (:node_one) { Node.new }

  it 'initialize an instance of the Node class' do
    expect(node_one.class).to eq Node
  end

  it 'initializes with a class instance var node_instances#Int' do
    expect(node_one.node_id).not_to eq 0
  end

  it 'initializes with a instance var edges#Array' do
    expect(node_one.edges.class).to eq Array
  end

  it 'able to access the node id' do
    expect(node_one.node_id.class).to eq Int
  end

  it 'able to add an edge to edges' do
    new_edge = 'Sample Edge'
    node_one.add_edge(new_edge)
    expect(node_one.edges.last).to eq new_edge
  end

  it 'able to remove an edge to edges' do
    edge_to_rm = 'Sample Edge'
    node_one.remove_edge(edge_to_rm)
    expect(node_one.edges.include?(edge_to_rm)).to eq false
  end

  # it 'Able to modify the location' do
  #   player_one.move(5)
  #   expect(player_one.get_location).to eq 5
  # end

  # it 'Able to see if the player is past the finish line' do
  #   expect(player_one.past_finish_line?(10)).to eq false
  # end

  # it 'Past finish line returns true when player location is >= track length' do
  #   player_one.move(5)
  #   expect(player_one.past_finish_line?(4)).to eq true
  # end

  # it 'Changes @player_won variable to true if past_finish_line? returns true' do
  #   player_one.move(5)
  #   expect(player_one.player_won(4)).to eq true
  # end
end
