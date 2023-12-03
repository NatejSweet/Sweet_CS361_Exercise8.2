class Poker < Game
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

class Chess < Game
    attr_reader :players # added to use the attr_reader
    def initialize(args)
        @players = [] #changed to use args
        args[:players].each { |x,y| @players.append(Player.new(name:x, color:y)) }#changed to create players similar to in go
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
class Go < Game
    attr_reader :players
    def initialize(args)
        @players = []
        args[:players].each { |x,y| players.append(Player.new(name:x, color:y)) } #changed to use the args, needed to iterate throught passed array, appending to instance array
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
class Game 
    attr_reader :players, :game
    def initialize(args)
        @players = args[:players]
    end

    def play()
        args[:game].play()
        puts args[:game].get_results

    end

end
class PlayGames
    attr_reader :player_list, :game
    def initialize(args)
        @player_list = args[:player_list]
        @game = args[:game].new(@player_list)
    end
    def play()
        @game.play()
    end
end



pg = PlayGames.new(Poker, ["alice", "bob", "chris", "dave"])
pg.play()
puts
pg = PlayGames.new(Chess, [["alice", "white"], ["bob", "black"]])
pg.play()
puts
pg = PlayGames.new(Go, [["alice", "white"], ["bob", "black"]])
pg.play()

