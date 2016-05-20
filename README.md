##Queen Attack

The purpose of this program is to determine if a Queen is able to attack another Queen in a standard game of chess.

By definition, a Queen can attack anything in the same row (horizontally), column (vertically), or diagonally.

##To run this program

```ruby
Open Terminal
cd Desktop
$ git clone https://github.com/gsperka/queen_attack
cd queen_attack
ruby start.rb
```

##Change the Queen's position:

Currently, the Queen's positions are determined by the yaml file located in 
config/queens_position.yml

To change the starting position, simply update the row or column of the Queen. 
Note: if you don't put in an integer between 0-7, an error will be thrown.


##Tests
To run the tests for this program:

From root, cd into the rspec directory and type:
rspec .