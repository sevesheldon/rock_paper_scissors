class String
  define_method(:beats?) do |opponent_turn|
    turn = self.downcase()

    if turn == "rock"

      if opponent_turn == "scissors"
        true
      elsif opponent_turn == "paper"
        false
      elsif opponent_turn == "rock"
        "tie"
      end

    elsif turn == "scissors"

      if opponent_turn == "paper"
        true
      elsif opponent_turn == "rock"
        false
      elsif opponent_turn == "scissors"
        "tie"
      end

    elsif turn == "paper"

      if opponent_turn == "scissors"
        true
      elsif opponent_turn == "rock"
        false
      elsif opponent_turn == "paper"
        "tie"  
      end

    end

  end
end
