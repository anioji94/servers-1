require 'socket'
require_relative 'notelist'

	notelist = Notelist.new

	server = TCPServer.new(2345) # sets the server to run at localhost, port 2345

	socket = server.accept # waits for client to connect
loop do

	socket.puts "Write a note, or quit with 'quit', or view notes with 'view'" # puts this string to the client, which then appears on the terminal

	they_said = socket.gets.chomp # prompts the user for an input

	if they_said == "quit" # if user inputs "quit" into client, the server loop will break and the close command will execute.
		break
	elsif they_said == "view"
			puts notelist.view_list
	elsif
		socket.puts "You said: #{they_said}. Goodbye!" # the input is then taken to the server and added into this string which is then returned to the client.

		notelist.add_to_list(they_said)
	end
	
end

socket.close



