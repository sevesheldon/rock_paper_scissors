class String
  define_method(:beats?) do |opponent_turn|

    turn = self.downcase()

    if turn == "rock"

      if opponent_turn == "scissors"
        true
      elsif opponent_turn == "paper"
        false
      end

    elsif turn == "scissors"

      if opponent_turn == "paper"
        true
      elsif opponent_turn == "rock"
        false
      end

    elsif turn == "paper"

      if opponent_turn == "scissors"
        true
      elsif opponent_turn == "rock"
        false
      end

    end

  end
end
