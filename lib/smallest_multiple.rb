# Implement your procedural solution here!
def smallest_multiple(num)
    prime_numbers = get_primes(num)
    prime_numbers.inject(1) do |product, prime|
        product * (prime ** ((Math.log(num) / Math.log(prime)).floor));
    end
end

def get_primes(num)
    primes = [2]
    i = 3
    while i <= num
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