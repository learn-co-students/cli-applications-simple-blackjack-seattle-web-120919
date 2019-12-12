require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(ctotal)
  puts "Your cards add up to #{ctotal}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(ctotal)
  puts "Sorry, you hit #{ctotal}. Thanks for playing!"
end

def initial_round
  twicedeal = deal_card + deal_card
  puts "Your cards add up to #{twicedeal}"
  twicedeal
end

def hit?(currentn)
  prompt_user
  userkey = get_user_input
  if userkey == "s"
    currentn
  elsif userkey == "h"
    currentn += deal_card
  else
    invalid_command
    prompt_user
    get_user_input
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21 do 
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    
