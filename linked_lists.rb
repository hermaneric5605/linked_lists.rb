#Node class, containing a data method and a link to the next_node, set both as nil by default.

 class Node
 	attr_accessor :value, :next_node
 	def initialize(value = nil, next_node = nil)
 		@value = value
 		@next_node = next_node
 	end
 end

#LinkedList class, which will represent the full list.
class LinkedList
	def initialize(data)
		@head = Node.new(data, nil)
		@tail = @head
	end

	#append adds a new node to the end of the list
	def append(data)
		@tail.next_node = Node.new(data, nil)
		@tail = @tail.next_node
	end

	#prepend adds a new node to the start of the list
	def prepend(data)
		@head.next_node = Node.new(data, @head)
		@head = node
	end

	#size returns the total number of nodes in the list
	def size
		count = 1
		return count if @head == @tail
		node = @head
		while node.next_node != nil
			count += 1
			node = node.next_node
		end
	end	

	#head returns the first node in the list
	def head
		@head
	end

	#tail returns the last node in the list
	def tail
		@tail
	end 

	#at(index) returns the node at the given index
	def at(index)
		return @head if position == 0
		return nil if position > ((self.size) - 1)
		node = @head
		index = 0
		while node.next_node
			return node if index == position
		end
	end

	#pop removes the last element from the list
	def pop
		if @head.next_node != nil
			node = @head
			while node.next_node.next_node != nil
				node = node.next_node
			end
			@tail = node
			@tail.next_node = nil
		else
			nil
		end
	end

	#contains? returns true if the passed in data is in the list and otherwise returns false
	def contains?(data)
			return true if @head.data == data
			node = @head
			while node.next_node != nil
				node = node.next_node
				return true if node.data == data
			end
			return false
	end	

	#find(data) returns the index of the node containing data, or nil if not found.
	def find(data)
		return 0 if head.data == data
		node = @head
		count = 0
		while node.next != nil
			node = node.next_node
			count += 1
			return count if node.data == data
		end
		nil
	end

	#to_s represent your LinkedList objects as strings, so you can print them out and preview them in the console. The format should be: ( data ) -> ( data ) -> ( data ) -> nil
	def to_s
		return "#{head.data} -> nil" if @head.next_node == nil
		r = ""
		node = @head
		while node.next_node !+ nil
			r += "( #{node.data} ) -> "
			node = node.next_node
		end
		r += "( #{node.data} ) -> " + " nil"
	end


end