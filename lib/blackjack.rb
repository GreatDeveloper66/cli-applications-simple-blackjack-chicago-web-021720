require 'pry'
def welcome
  # code #welcome here
  puts 'Welcome to the Blackjack Table'
end

def deal_card
  # code #deal_card here
  rand(10) + 1
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  firstdeal = deal_card()
  seconddeal = deal_card()
  sum = firstdeal + seconddeal
  display_card_total(sum)
  sum
end

def hit?(current_card_total)
  # code hit? here
  prompt_user()
  input = get_user_input()
  if input == 'h'
    current_card_total += deal_card()
  else
    if input != 's'
      invalid_command()
      hit?(current_card_total)
    end
  end
  current_card_total
end

def invalid_command
  # code invalid_command here
  puts 'Please enter a valid command'
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome()
  current_card_total = initial_round()
  until current_card_total > 21
    current_card_total = hit?(current_card_total)
    display_card_total(current_card_total)
  end
end_game(current_card_total)

  # code runner here
  #welcome()
  #initial_round()
  #current_total = 0
  #while current_total <= 21

  #  current_total = hit?(current_total)
  #  display_card_total(current_total)
  #end
#end_game()
end
