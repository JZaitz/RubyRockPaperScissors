
puts "Welcome to Rock, Paper, Scissors! Please enter your choice (rock, paper or scissors):"
guess = gets.chomp.downcase

puts "You selected #{guess}."


def rock_paper_scissors(guess)

    choices = ['rock', 'paper', 'scissors']
    computer_guess = choices[rand 3]
    rules = {rock: ['scissors'], paper: ['rock'], scissors: ['paper'] }

    if rules[computer_guess.to_sym].include? guess.to_s
      puts "The computer chose #{computer_guess}, they win!!"
    elsif rules[guess.to_sym].include? computer_guess.to_s
      puts "You win, the computer chose #{computer_guess}!!!"
    else
      puts "#{guess} vs #{computer_guess}, Tie."
    end

end


rock_paper_scissors(guess)
