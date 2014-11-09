class WordGamesController < ApplicationController
  get '/' do 
    authenticate! #current_user
    @game = WordGame.create #creates new game
    current_user.word_games << @game #adds newly created game to users ganes in db
    erb :'wordgames/index' #redirects to view serving up the actual game
  end

  get '/:id' do 
    authenticate!
    @game = WordGame.find(params[:id]) #finds a word game by its id so user can continue it
    erb :'wordgames/index' #redirects to view serving up the actual game
  end

  patch '/:id/api/guess' do
    authenticate!
    content_type :json
    game = WordGame.find(params[:id]) # logic to actually send the guess to the db
    guess = params[:guess]
    game.guess_letter(guess)
    game.complete? # if game is complete, save it
    game.save

    {
      guess: guess,
      game_state: game.game_state,
      message_from_the_server: ['Great work!', 'Good Job!', 'Lookin great!', 'You win!', 'High-five yourself- you got it!', 'Winner, winner chicken dinner!', 'Well done!'].sample,
      complete: game.complete
    }.to_json
  end  

end