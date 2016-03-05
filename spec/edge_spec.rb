require_relative '../source/edge'
require_relative '../source/node'

describe Edge do
  let (:node_one) { Node.new }
  let (:node_two) { Node.new }
  let (:edge_one) { Edge.new(node_one, node_two) }

  it 'initializes with a class instance var edge_id#Int' do
    expect(edge_one.edge_id.class).to eq Fixnum
  end

  it 'initializes with a instance var nodes#Array' do
    expect(edge_one.nodes.class).to eq Array
  end
  it 'has two nodes' do
    expect(edge_one.nodes.count).to eq 2
  end

  it 'able to access nodes content' do
    expect(edge_one.nodes.first).to eq 'Node One'
  end

  # it 'able to remove an edge to edges' do
  #   edge_to_rm = 'Sample Edge'
  #   node_one.remove_edge(edge_to_rm)
  #   expect(node_one.edges.include?(edge_to_rm)).to eq false
  # end

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
