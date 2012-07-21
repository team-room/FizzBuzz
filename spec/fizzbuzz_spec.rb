# encoding: utf-8

require 'fizzbuzz'

describe FizzBuzz do
	describe ".imprime" do
		it "imprime o número se ele não for divisível por 3 ou 5" do
			FizzBuzz.imprime(2).should == "2"
		end

		it "imprime fizz se 3 for divisível por 3" do
			FizzBuzz.imprime(3).should == "fizz"
		end

		it "imprime fizz se 6 for divisível por 3" do
			FizzBuzz.imprime(6).should == "fizz"
		end

		it "imprime buzz se 5 for divisivel por 5" do
			FizzBuzz.imprime(5).should == "buzz"
		end

		it "imprime buzz se 10 for divisível por 5" do
			FizzBuzz.imprime(10).should == "buzz"
		end

		it "imprime fizzbuzz se 15 for divisível por 5 e 3" do
			FizzBuzz.imprime(15).should == "fizzbuzz"
		end

		it "imprime fizzbuzz se 30 for divisível por 5 e por 3" do
			FizzBuzz.imprime(30).should == "fizzbuzz"
		end

		it "exception se o número for nulo" do
			expect {
				FizzBuzz.imprime(nil)
			}.to raise_exception
		end

	end

	describe ".fizzbuzz" do
		it "imprime lista esperada usando uma lista de 6" do
			numerosEsperados = %w(1 2 fizz 4 buzz fizz)

			FizzBuzz.fizzbuzz(6).should == numerosEsperados
		end

		it "imprime lista esperada usando uma lista de 15" do
			numerosEsperados = %w(1 2 fizz 4 buzz fizz 7 8 fizz buzz 11 fizz 13 14 fizzbuzz)

			FizzBuzz.fizzbuzz(15).should == numerosEsperados
		end
	end
end