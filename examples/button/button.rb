#
# This is an example of how to use the button class
# You must register helpers and have the main thread
# sleep or in someway keep running or your program
# will exit before any callbacks can be called
#
require File.expand_path('../../../lib/dino', __FILE__)

board = Dino::Board.new(Dino::TxRx.new)
button = Dino::Components::Button.new(pin: 13, board: board)

button.down do
  puts "button down"
end

button.up do
  puts "button up"
end

sleep
