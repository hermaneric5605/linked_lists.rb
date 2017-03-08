
#ShalaQweghen
#Node class, containing a #value method and a link to the #next_node, set both as nil by default.
class Node
	attr_accessor :value, :next_node

	def initialize(value)
		@value = value
		@next_node = nil
	end
end

#LinkedList class, which will represent the full list.
class LinkedList
	#initialize method
	def initialize
		@head = nil
		@tail = nil
	end


	#append adds a new node to the end of the list
	def append(data)
		node = Node.new(data)
		if @head.nil?
			@head = node
			@tail = node
		else
			pos = @head
			until pos.next_node.nil?
				pos = pos.next_node
			end
			pos.next_node = node
			@tail = node
		end
	end


	#prepend adds a new node to the start of the list
	def prepend(data)
		node = Node.new(data)
		if @head.nil?
			@head = node
			@tail = node
		else
			node.next_node = @head
			@head = node
		end
	end


	#size returns the total number of nodes in the list
	def size
		if @head.nil?
			return 0
		else
			c = 1
			pos = @head
			until pos.next_node.nil?
				pos = pos.next_node
				c += 1
			end
			return c
		end
	end

	#head returns the first node in the list
	def head
		@head.nil? ? nil : @head.value
	end

	#tail returns the last node in the list
	def tail
		@tail.nil? ? nil : @tail.value
	end

	#at(index) returns the node at the given index
	def at(index)
		c = 0
		pos = @head
		until c == index
			c += 1
			pos = pos.next_node
		end		
		return pos.value
	end

	#pop removes the last element from the list
	def pop
		pos = @head
		until pos.next_node.next_node.nil?
			pos = pos.next_node
		end
		@tail = pos
		@tail.next_node = nil

	end

	#contains? returns true if the passed in value is in the list and otherwise returns false.
	def contains?(data)
		pos = @head
		until pos.nil?
			return true if pos.value == data
			pos = pos.next_node
		end
		return false
	end

	#find(data) returns the index of the node containing data, or nil if not found.
	def find(data)
		pos = @head
		c = 0
		until pos.nil?
			return c if pos.value == data
			pos = pos.next_node
			c += 1
		end
		return nil
	end

	#to_s represent your LinkedList objects as strings, so you can print them out and preview them in the console. The format should be: ( data ) -> ( data ) -> ( data ) -> nil
	def to_s
		str = ""
		pos = @head
		until pos.nil?
			str << "(#{pos.value}) -> "
			pos = pos.next_node
		end
		str << "nil"
	end

end

list = LinkedList.new

#list.append("holola")
#list.append("yolola")
#list.prepend("kolola")
#puts list.size
#puts list.head
#puts list.tail
#puts list.at(1)
#list.insert_at(1, "polola")
#list.insert_at(1, "cholola")
#puts list.contains?("holola")
#puts list.contains?("lolola")
#p list.find("polola")
#puts list.to_s
#list.remove_at(2)
#puts list.to_s