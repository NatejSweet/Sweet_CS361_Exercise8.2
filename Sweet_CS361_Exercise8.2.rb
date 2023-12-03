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
        return @players[i].get_hand
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
        @color = args[:color]
        @hand = []
    end

    def append_to_hand(cards)       # append the passed to the hand
        cards.each { |card| @hand.append(card) }
    end
end
class Go
    def initialize(players)
        @players = []
        players.each { |x| @players.append(Player.new(name:x, color:y)) }
    end
    def play()
        puts "Players in the go game:"
        @players.each { |player| puts "#{player.name}: #{player.color}" }
        # [pretend there's code here]
        end
    def get_score()
        return "[pretend these are go results]"
        end
end
class PlayGames
    def initialize(game_number, player_list)
        @player_list = player_list
        @game_number = game_number
    end
    def play()
        case @game_number
            when 1
                poker = Poker.new(@player_list)
                poker.play_poker()
                puts poker.get_results()
            when 2
                chess = Chess.new(@player_list)
                chess.play_game()
                puts chess.get_results()
            when 3
                go = Go.new(@player_list)
                go.play()
                puts go.get_score()
            end
    end
end

pg = PlayGames.new(1, ["alice", "bob", "chris", "dave"])
pg.play()
puts
pg = PlayGames.new(2, [["alice", "white"], ["bob", "black"]])
pg.play()
puts
pg = PlayGames.new(3, [["alice", "white"], ["bob", "black"]])
pg.play()

