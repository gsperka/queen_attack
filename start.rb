require 'YAML'
queens = YAML.load_file('./config/queens_position.yml')
require_relative './lib/queen'
require_relative './lib/game_logic'

white_queen = Queen.new(queens["white"]["row"], queens["white"]["column"])
black_queen = Queen.new(queens["black"]["row"], queens["black"]["column"])

new_game = GameLogic.new(white_queen, black_queen)
new_game.start