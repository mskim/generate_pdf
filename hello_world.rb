# ## Hello World
#
# This simple example mimics the classic "hello world" examples from
# programming languages.
#
# Usage:
# : `ruby hello_world.rb`
#

require 'hexapdf'

doc = HexaPDF::Document.new
page = doc.pages.add
canvas = page.canvas
puts page.box.width
puts h = page.box.height

# puts "canvas.box.width:#{canvas.box.width}"
# puts "canvas.height:#{canvas.height}"
str = "Hello Min Soo! 2"
puts "printing: #{str}"
canvas.transform(1, 0, 0, 1, 0, h)
canvas.font('Helvetica', size: 50)
canvas.text(str, at: [20, -100])
canvas.text(str, at: [20, -300])
doc.write("hello_world.pdf", optimize: true)
