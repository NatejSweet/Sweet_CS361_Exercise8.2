class Poker
    def initialize(players)
        @players = players
        @hands = []
        players.length().times { |x| @hands.append(nil) }
    end

    def play_poker()
        puts "Players in the poker game:"
        @players.length().times { |i| puts "#{self.get_player_name(i)}: #{self.get_player_hand(i)}" }
        # [pretend there's code here]
    end

    def get_results()
        return "[pretend these are poker results]"
    end

    def get_player_name(i)
        return @players[i]
    end

    def get_player_hand(i)
        return @hands[i]
    end
end

class Chess
    def initialize(players)
        @players = players
    end

    def play_game()
        puts "Players in the chess game:"
        @players.length().times { |x| puts "#{self.get_player_name(x)}: #{@players[x][1]}" }
        # [pretend there's code here]
    end

    def get_results()
        return "[pretend these are chess results]"
    end

    def get_player_name(i)
        @players[i][0]
    end
end

class GoPlayer
    attr_reader :name, :color

    def initialize(name, color)
        @name = name
        @color = color
    end
end

class Go
    # [code for Go class]
end
