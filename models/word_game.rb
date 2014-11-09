class WordGame < ActiveRecord::Base
  belongs_to :user

  before_create do
    self.word = ['happy', 'animals', 'cows', 'monkeys', 'homes', 'smiles', 'joy'].sample
    self.game_state = self.word.gsub(/\w/i, "_")
  end

  def guess_letter(guess)

    guess.downcase!
    state = self.game_state.dup  # Duplicate the game state so it has a new object id
    word = self.word #  Obtain the games word
    word.chars.each_with_index do |letter, idx|  # Iterating through each charater of the world (with the index of the letter in the word)
      if letter == guess  # If the guess matches
        state[idx] = letter  # Update the game state to include the correct guess
      end
    end

    self.game_state = state
  end


  def complete?
    if self.game_state == self.word
      self.complete = true
    end
    self.complete
  end

end

