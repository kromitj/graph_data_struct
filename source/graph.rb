require_relative 'edge'
require_relative 'node'
require_relative 'node_set'

class Graph
  attr_accessor :node_set, :edge_set
  def initialize
    @node_set = NodeSet.new()
    @edge_set = Array.new()
  end

end

