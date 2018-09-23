def fizzbuzz(a)
    FIZZBUZZ.clear
    for i in 1..a
    FIZZBUZZ << 'FizzBuzz' if i % 3 == 0 && i % 5 == 0
    FIZZBUZZ << 'Fizz' if i % 3 == 0 && i % 5 != 0
    FIZZBUZZ << 'Buzz' if i % 5 == 0 && i % 3 != 0
    FIZZBUZZ << i if i % 3 != 0 && i % 5 != 0
    yield FIZZBUZZ[i-1] if block_given?
    end
    return FIZZBUZZ   
end
FIZZBUZZ = []

print fizzbuzz(5){}
print fizzbuzz(20){|x| print "#{x}-"}
print fizzbuzz(5){}.select{|x| x.is_a? Fixnum}
