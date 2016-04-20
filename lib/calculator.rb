class Calculator
	def add *numbers
		numbers.inject(:+)
	end
	def sub *numbers
		numbers.inject(:-)
	end
	def mult *numbers
		numbers.inject(:*)
	end
	def divd *numbers
		numbers.inject(:/)
	end
end