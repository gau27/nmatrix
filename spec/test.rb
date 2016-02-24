require 'nmatrix'
require 'nmatrix/lapacke'

a = []

3.upto(300) do |i|
	a = NMatrix.seq([i,i], {:dtype => :float64})
	a += NMatrix.new([i,i], 1)

	puts "n = #{i}"   
	puts "Determinant : #{"%.16E"	% a.det}" 

	a.invert!

	p a
	puts
end

