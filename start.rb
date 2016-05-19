require 'YAML'
queens = YAML.load_file('./config/queens_position.yml')
require_relative './lib/queens'

new_game = Queens.new({white: [queens["white"]["row"], queens["white"]["column"]], black: [queens["black"]["row"], queens["black"]["column"]]})
new_game.start