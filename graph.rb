require_relative "knight.rb"


class Graph
    attr_accessor :graph,:board
    def initialize
      @graph = []
      @board = []
    end
    
    def make_board
      for i in 1..8
        for j in 1..8
          @board.push([i,j])
        end
      end
    end
  
    
    def make_graph
     @board.each do |x|
      cell = Knight.new(x)
      cell.children = cell.next_moves(x)
      @graph.push(cell)
     end
    end
    
    def find_pos(pos)
      graph.each do |x|
        return x if x.position == pos
      end
    end
  
    def make_path(start, ending)
      queue = []
      queue.push(start)
      done = []
      path = {}
      done.push(start)
  
      until queue.empty?
        pos = queue.shift 
        pos.children.each do |child|
          next if done.include?(child)
          queue.push(find_pos(child))
          done.push(child)
          path[child] = pos.position
          return path if child == ending.position
        end
      end
      
    end
  
    def get_path(start,ending)
      path = []
      raw = make_path(find_pos(start),find_pos(ending))
      until start == ending
        path.push(ending)
        ending = raw[ending]
      end
      path.push(start)
      path.reverse
    end
end

def knight_moves(start,ending)
  
    return puts("Invalid input") unless start.is_a?(Array) && ending.is_a?(Array)
    guard = start + ending
    return puts("Invalid input") if guard.length != 4
    guard.each do |x|
        return puts("Invalid input") unless x.between?(1,7)
    end
   
 


    graph = Graph.new
    graph.make_board
    graph.make_graph
    path = graph.get_path(start,ending)
    puts "Congrats! your knight made it in #{path.size - 1} moves!"
    puts"Your path is:"
    path.each {|x| print "#{x}\n"}
end