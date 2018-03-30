class CLI2

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

    if input == "y" or input == "yes"
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
        input2 = ""
        puts "Would you like to go first (1) or second (2)?"
          input2 = gets.strip
            if input2 == "1"
              puts "You are 'X'"
              g = Game.new(Players::Human.new("X"), Players::Human.new("O"), board = Board.new)
              g.play
              # board.display
              again?
            else
              puts "You are 'O'"
              g = Game.new(Players::Human.new("O"), Players::Human.new("X"), board = Board.new)
              g.play
              # board.display
              again?
            end


      when "2"
        input3 = ""
        puts "Would you like to go first (1) or second (2)?"
          input3 = gets.strip
            if input3 == "1"
              puts "You are 'X' and the computer is 'O'"
              g = Game.new(Players::Human.new("X"), Players::Computer.new("O"), board = Board.new)
              g.play
              # board.display
              again?
            elsif input3 == "2"
              puts "You are 'O'and the computer is 'X'"
              g = Game.new(Players::Computer.new("X"), Players::Human.new("O"), board = Board.new)
              g.play
              # board.display
              again?
            else
              puts "Please choose either '1' or '2'"
            end


    when "3"
    g = Game.new(Players::Computer.new("X"), Players::Computer.new("O"), board = Board.new)
    puts "Player 1 is 'X'"
    puts "Player 2 is 'O'"
    g.play
    # board.display
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
