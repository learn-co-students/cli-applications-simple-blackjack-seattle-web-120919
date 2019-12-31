require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(10...11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"

end

def prompt_user
 puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
gets.chomp
end

def end_game(total)
puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  two_cards = deal_card + deal_card
puts "Your cards add up to #{two_cards}"
two_cards
end

def hit?(current_card_total)
 prompt_user
 input = get_user_input 
   #gonna call that method and then whenever it gets the prompt it is going to put in s.

 if input == "h"
  current_card_total += deal_card
 elsif
  input == "s"
  current_card_total

 else 
  invalid_command
  prompt_user
  input = get_user_input 
end 
  current_card_total
end

def invalid_command
puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
welcome
card_total = initial_round
until card_total > 21
card_total = hit?(card_total)
display_card_total(card_total)
end 
end_game(card_total)
end
    
