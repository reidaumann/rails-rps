class ZebraController < ApplicationController
  def r_move
    @comp_move=["rock", "paper", "scissors"].sample
    @my_move = "rock"
  
    if @comp_move == @my_move
        @result = "tied"
    elsif @comp_move == "paper"
        @result = "lost"
    else
        @result = "won"
    end
    render({:template => "game_templates/play_rock"})
  end

  def p_move
    @comp_move=["rock", "paper", "scissors"].sample
    @my_move = "paper"
  
    if @comp_move == @my_move
        @result = "tied"
    elsif @comp_move == "scissors"
        @result = "lost"
    else
        @result = "won"
    end
    render({:template => "game_templates/play_paper"})
  end

  def s_move
    @comp_move=["rock", "paper", "scissors"].sample
    @my_move = "scissors"
  
    if @comp_move == @my_move
        @result = "tied"
    elsif @comp_move == "rock"
        @result = "lost"
    else
        @result = "won"
    end
    render({:template => "game_templates/play_paper"})
  end

  def rules
    render({:template => "game_templates/rules"})
  end
end
