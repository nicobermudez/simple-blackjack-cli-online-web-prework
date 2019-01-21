def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(sum)
  # code #display_card_total here
  puts "Your cards add up to #{sum}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  input = gets.chomp
end

def end_game(n)
  # code #end_game here
  puts "Sorry, you hit #{n}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  n = deal_card
  n2=deal_card
  sum = n+n2
  display_card_total(sum)
  return sum
end

def hit?(n)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == 'h'
    n+=deal_card
    return n
  elsif input == 's'
    return n
  else 
    invalid_command
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  n = initial_round
  until n > 21
    n = hit?(n)
    display_card_total(n)
  end
end_game(n)
end
    
