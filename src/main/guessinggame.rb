#!/usr/bin/env ruby
# file: guessinggame.rb
# author: sgarbeil
# description: From Ken Tracton 24 ready to run games in Basic.

class Game 
    def insReq
        puts("Do you want Intructions: [Y/N] ")
        return yorn
    end

    def instructions
        print("At Random your friendly computer will")
        print("choose an integer between 1 and 100 [inclusive].")
        print("Your goal is to guess the number. You have a maximum of")
        print("10 guesses, but normall you shouldn't need that many.")
        print("Hint!! A practical split search method should")
        print("take no more than 5 guesses.")
        print("")
        print("Good luck!!")
        print("")
    end

    def prompt
        puts("Please enter your guess: ")
    end

    def guess
        m = gets().chomp().to_i()
        return m
    end

    def genTheNumber
        return rand(100)
    end

    def yorn
        done = false
        yin = 'M'
        ret = false
        while !done do
            yin = gets().chomp().upcase()
            yin = yin[0]
            if yin == 'Y' || yin == 'N' then 
                done = true
            end
        end
        if yin == 'Y'
            ret = true
        end
    end


    def loop 
        if insReq then 
            instructions
        end 
        n = genTheNumber
        count = 0
        while(true)
            if count < 10 then 
                prompt()
                youNumber = guess()
                if youNumber == n then 
                    print("You got it, right on the nose!")
                    puts("It only took you %d", count)
                    print(" tries")
                    break
                elsif n > youNumber then 
                    print("Nope, your guess is low.")
                elsif n < youNumber then 
                    print("Nope, your guess is high.")
                end
            else 
                print("Too many guesses. Sorry you lose.")
                break
            end
        end

    end
        

end
