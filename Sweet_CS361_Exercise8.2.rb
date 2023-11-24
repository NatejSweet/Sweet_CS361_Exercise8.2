class Poker
    def initialize(args)
        @players = args[:players] # changed to use args
        # @hands = [] Removed hands since each player will have a hand
        players.length().times { |x| @players[x].append_to_hand(self.create_hand()) } # changed to fill the hand item of a player
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
        return @playes[i].get_hand
    end

    def create_hand()
        # pretend this pull randomly from a deck removing pulled items from the deck
        return nil 
    end
end

class Chess
    def initialize(args)
        @players = args[:players] #changed to use args
        @players.length().times { |x| @players[x].set_color(self.pick_color(x)) } # changed to set the color of a player
    end

    def play_game()
        puts "Players in the chess game:"
        @players.length().times { |x| puts "#{self.get_player_name(x)}: #{self.get_player_color(x)}" }
        # [pretend there's code here]
    end

    def get_results()
        return "[pretend these are chess results]"
    end

    def get_player_name(i)
        @players[i].name #changed to use the attr_reader
    end

    def get_player_color(i)
        @players[i].color # changed to use the attr_reader
    end

    def pick_color(i)         # picks a color for a player
        if i == 0
            return "white"
        else
            return "black"
        end
    end
end

class Player
    attr_reader :name, :color, :hand

    def initialize(args)        #changed to use args
        @name = args[:name]
        @color = nil
        @hand = []
    end

    def append_to_hand(cards)       # append the passed to the hand
        cards.each { |card| @hand.append(card) }
    end

    def set_color(color)        # set the color of the player
        @color = color
    end
end

class Go
    # [code for Go class]
end
