require_relative "lib/graph"

graph = Graph.new

graph.create_board

graph.knight_moves([3, 3], [0, 6])
graph.knight_moves([0, 0], [3, 3])
graph.knight_moves([3, 3], [0, 0])
graph.knight_moves([0, 0], [7, 7])
graph.knight_moves([3, 3], [4, 3])
