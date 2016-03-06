require_relative 'node'

class NodeSet
  attr_accessor :node_instances

  def initialize
    @node_instances = Array.new
  end

  def add_node
    @node_instances << Node.new
    p "new node id: #{@node_instances.last.node_id}"
  end

  def remove_node(node_rm_id)
    index_of_node = find_node_index(node_rm_id)
    @node_instances.delete_at(index_of_node)
  end

  def show_node(node_id)
    index_of_node = find_node(node_id)
    p 'Node Id: {@node_instances[index_of_node]}'
    return nil
  end

  def show_nodes    
    @node_instances.each { |node| node.show_node}
    return nil
  end

  def find_node_index(node_id)
    index_of_node = nil
    @node_instances.each_with_index { |node, index| index_of_node = index if node.node_id == node_id }
    p "node not in set" if index_of_node == nil
    return index_of_node
  end

  def find_node(node_id)
    p node_id
    node_found = nil
    @node_instances.each { |node| node_found = node if node.node_id == node_id }
    p "node not in set" if node_found == nil
    return node_found
  end
end
