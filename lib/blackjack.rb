def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = rand(1...12)
  card
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
  decision = gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_one = deal_card 
  card_two = deal_card
  total = card_one + card_two
  inital = display_card_total(total)
  return total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
  get_user_input
end

def hit?(card_total)
  # code hit? here
  prompt_user
  decision = get_user_input
  if decision == "s"
    return card_total
  elsif decision == "h"
    card_total += deal_card
  else 
    invalid_command
  end
  return card_total
end


#p hit?(7)


#####################################################
# get every test to pass before coding runner below #
#####################################################

#def runner
  # code runner here
#end