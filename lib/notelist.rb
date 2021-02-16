class Notelist 
	attr_reader :list
	def initialize
		@list = []
	end

	def add_to_list(body)
		@list << body
	end

	def view_list
		list.each do |note|
			puts note
		end
	end
end