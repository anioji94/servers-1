require 'notelist'

describe Notelist do
	describe '#add_to_list' do
		it 'should add items to a list of notes' do
			expect{ subject.add_to_list("note") }.to change{ subject.list.count }.by 1
		end
	end

	describe '#view_list' do
		it 'should display a list of all the notes' do
			subject.add_to_list("note")
			expect{ subject.view_list }.to output("note\n").to_stdout
		end

		it 'should display multiple notes' do
			10.times{ subject.add_to_list("note") }
			expect(subject.view_list).to include("note")
		end
	end
end