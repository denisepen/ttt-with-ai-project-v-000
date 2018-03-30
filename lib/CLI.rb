class CLI

  def call
    menu
    choices
    # again?
    goodbye

  end

  def menu
    puts "Hello and welcome to Tic Tac Toe!"
    puts "How do you want to play?"
    puts "To play against another player press 1"
    puts "To play against the computer press 2"
    puts "To watch the computer play itself press 3"
    puts "Or type exit to end the game"

  end

  def again?
    puts "Would you like to play again?"
    puts "y for yes and n for no"

    input = gets.strip.downcase

    if input == "y"
      menu
    else
      goodbye
    end
  end

  def choices
    input = ""
    while input != "exit"
      input = gets.strip


    case input
      when "1"
        g = Game.new(Players::Human.new("X"), Players::Human.new("O"), board = Board.new)
        puts "Player 1 is 'X'"
        puts "Player 2 is 'O'"
        g.play
        board.display
        again?


      when "2"
      g = Game.new(Players::Human.new("X"), Players::Computer.new("O"), board = Board.new)
      puts "You are player 'X'"
      puts "The computer is 'O'"
      g.play
      board.display
      again?


    when "3"
    g = Game.new(Players::Computer.new("X"), Players::Computer.new("O"), board = Board.new)
    puts "Player 1 is 'X'"
    puts "Player 2 is 'O'"
    g.play
    board.display
    again?

  else
      puts "Please enter a vaild request or type exit to exit"
    end

    end
  end


  def goodbye
    puts "Thanks for playing with Tic Tac Toe with us!"
    puts "Please type exit to end the game"
  end




end
