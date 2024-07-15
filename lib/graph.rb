require_relative "vertices"

class Graph
  attr_accessor :vertices

  def initialize
    @vertices = []
  end

  def create_board
    value_on_x_axis = (0..7)
    value_on_y_axis = (0..7)

    value_on_x_axis.each do |x_value|
      value_on_y_axis.each do |y_value|
        vertices << Vertex.new(x_value, y_value)
      end
    end
  end
end

# vertex = Vertex.new(3, 3) ### possible coordinates [5, 2], [4, 1], [1, 2], [2, 1], [5, 4], [4, 5], [5, 2] and [4, 1]
# p vertex

graph = Graph.new

graph.create_board

graph.vertices.each { |vertix| p vertix.coordinates }
