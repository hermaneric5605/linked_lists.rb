class Node
		attr_accessor :value, :next_node
		def initialize value, next_node=nil
			@value = value
			@next_node = next_node
		end
	end

class LinkedList
	attr_accessor: :head, :tail
	def to_s
		if @head.nil?
			return "empty list?"
		else
			item = @head
			while item.next_node
				item.inspect
				item.next_node
			end
		end
		tail.inspect
		puts"/n"
	end




	

end