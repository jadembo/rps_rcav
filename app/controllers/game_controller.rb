class GameController < ApplicationController
  def user_plays_rock
    moves = ["rock", "paper", "scissors"]
    @computer_move = moves.sample

    if @computer_move =="rock"
      @outcome = "You tied"
      @class = "label label-warning"
    end

    if @computer_move == "scissors"
      @outcome = "You win"
      @class = "label label-success"
    end

    if @computer_move == "paper"
      @outcome = "You lose"
      @class = "label label-danger"
    end

    @url = "/assets/images/#{@computer_move}.png"

    render("game/play_rock.html.erb")
  end

  def user_plays_scissors
    moves = ["rock", "paper", "scissors"]
    @computer_move = moves.sample

    if @computer_move =="scissors"
      @outcome = "You tied"
      @class = "label label-warning"
    end

    if @computer_move == "rock"
      @outcome = "You lose"
      @class = "label label-danger"
    end

    if @computer_move == "paper"
      @outcome = "You win"
      @class = "label label-success"
    end

    @url = "/assets/images/#{@computer_move}.png"

    render("game/play_scissors.html.erb")

  end

  def user_plays_paper
    moves = ["rock", "paper", "scissors"]
    @computer_move = moves.sample

    if @computer_move =="paper"
      @outcome = "You tied"
      @class = "label label-warning"
    end

    if @computer_move == "rock"
      @outcome = "You win"
      @class = "label label-success"
    end

    if @computer_move == "scissors"
      @outcome = "You lose"
      @class = "label label-danger"
    end

    @url = "/assets/images/#{@computer_move}.png"

    render("game/play_paper.html.erb")
  end
end
