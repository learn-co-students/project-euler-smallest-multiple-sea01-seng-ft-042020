# Implement your object-oriented solution here!
class SmallestMultiple
    attr_reader :num
    def initialize(num)
        @num = num
    end

    def lcm
        prime_numbers = get_primes()
        prime_numbers.inject(1) do |product, prime|
            product * (prime ** ((Math.log(self.num) / Math.log(prime)).floor));
        end
    end
    
    def get_primes()
        primes = [2]
        i = 3
        while i <= self.num
            prime_test = true
            primes.each do |prime|
                if i % prime === 0
                    prime_test = false
                end
            end
            if prime_test
                primes.push(i)
            end
            i+=2
        end
        primes
    end

end