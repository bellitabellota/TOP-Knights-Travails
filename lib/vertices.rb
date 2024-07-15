class Vertex
  attr_reader :coordinates

  def initialize(x, y)
    @coordinates = [x, y]
    @reachable_coordinates = filter_for_possible_coordinates
  end

  def filter_for_possible_coordinates
    reachable_coordinates = calculate_moves

    filtered_coordinates = reachable_coordinates.map do |move_array|
      move_array if (1..7).include?(move_array[0]) && (1..7).include?(move_array[1])
    end

    filtered_coordinates.compact
  end

  def calculate_moves
    reachable_coordinates = []
    reachable_coordinates << [coordinates[0] - 1, coordinates[1] + 2]
    reachable_coordinates << [coordinates[0] - 2, coordinates[1] + 1]
    reachable_coordinates << [coordinates[0] - 2, coordinates[1] - 1]
    reachable_coordinates << [coordinates[0] - 1, coordinates[1] - 2]
    reachable_coordinates << [coordinates[0] + 1, coordinates[1] + 2]
    reachable_coordinates << [coordinates[0] + 2, coordinates[1] + 1]
    reachable_coordinates << [coordinates[0] + 2, coordinates[1] - 1]
    reachable_coordinates << [coordinates[0] + 1, coordinates[1] - 2]
  end
end

vertex = Vertex.new(3, 3) ### possible coordinates [5, 2], [4, 1], [1, 2], [2, 1], [5, 4], [4, 5], [5, 2] and [4, 1]
p vertex

vertex_2 = Vertex.new(0, 7) ## possible coordinates [2, 6] and [1, 5]
p vertex_2
