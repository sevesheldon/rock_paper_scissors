class String
  define_method(:beats?) do |opponent_turn|
    turn = self.downcase()

    if turn == "rock"

      if opponent_turn == "scissors"
        true
      elsif opponent_turn == "paper"
        false
      end

    end

  end
end
