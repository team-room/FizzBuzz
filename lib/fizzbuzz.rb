class FizzBuzz
	def self.imprime(numero)
		return "fizzbuzz" if numero % 3 == 0 and numero % 5 == 0
		
		return "fizz" if numero % 3 == 0
		return "buzz" if numero % 5 == 0		
		
		numero.to_s
	end

	def self.fizzbuzz(numero)
		(1..numero).map { |numero| imprime(numero) }
	end
end