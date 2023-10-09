#!/usr/bin/ruby

require './guessinggame.rb'  # grab the game functions

require 'minitest/autorun' # ruby's testing library.  


def test_genTheNumber
    g = Game.new()
    number = g
    assert_operator number, :>, 0, "generated numbers must be between [1..100]"
    assert_operator number, :<, 101, "generated numbers must be between [1..100]"
end


test_genTheNumber