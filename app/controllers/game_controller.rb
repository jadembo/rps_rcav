class GameController < ApplicationController
  def user_plays_rock
    moves = ["rock", "paper", "scissors"]
    @computer_move = moves.sample

    if @computer_move =="rock"
      @outcome = "You tied"
    end

    if @computer_move == "scissors"
      @outcome = "You win"
    end

    if @computer_move == "paper"
      @outcome = "You lose"
    end

    render("game/play_rock.html.erb")
  end

  def user_plays_scissors
    moves = ["rock", "paper", "scissors"]
    @computer_move = moves.sample

    if @computer_move =="scissors"
      @outcome = "You tied"
    end

    if @computer_move == "rock"
      @outcome = "You lose"
    end

    if @computer_move == "paper"
      @outcome = "You win"
    end

    render("game/play_scissors.html.erb")

  end

  def user_plays_paper
    moves = ["rock", "paper", "scissors"]
    @computer_move = moves.sample

    if @computer_move =="paper"
      @outcome = "You tied"
    end

    if @computer_move == "rock"
      @outcome = "You win"
    end

    if @computer_move == "scissors"
      @outcome = "You lose"
    end

    render("game/play_paper.html.erb")
  end
end
