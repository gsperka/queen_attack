##Queen Attack

The purpose of this program is to determine if a Queen is able to attack another Queen in a standard game of chess.

By definition, a Queen can attack anything in the same row (horizontally), column (vertically), or diagonally.

##To run this program

Open up your terminal
```ruby
cd Desktop
$ git clone https://github.com/gsperka/queen_attack
cd queen_attack
ruby start.rb
```

Your output should look like this:

![Output example](http://i.imgur.com/btla7Kj.png)

Note: The "W" represents where the White Queen is positioned while the "B" represents the Black Queen's position.

##Change the Queen's position:

Currently, the Queen's positions are determined by the yaml file located in 
``` 
config/queens_position.yml
```

To change the starting position, simply open 
```ruby queens_position.yml ``` and update the row or column of the Queen. 
Note: if you don't put in an integer between 0-7, an error will be thrown.


##Tests
To run the tests for this program:

From root
```ruby
cd rspec
rspec .
```