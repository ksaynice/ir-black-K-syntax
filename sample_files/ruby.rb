# p027readwrite.rb
# Open and read from a text file
# Note that since a block is given, file will
# automatically be closed when the block terminates
File.open('p014constructs.rb', 'r') do |f1|
  i = 100
  while line = f1.gets
    i += 1
    puts line
  end
end

# Create a new file and write to it
File.open('test.rb', 'w') do |f2|
  # use "\n" for two lines of text
  f2.puts "Created by Satish\nThank God!"
end

COLORS = { black:   "000",
           red:     "f00",
           green:   "0f0",
           yellow:  "ff0",
           blue:    "00f",
           magenta: "f0f",
           cyan:    "0ff",
           white:   "fff" }

class String
  COLORS.each do |color,code|
    define_method "in_#{color}" do
      "<span style=\"color: ##{code}\">#{self}</span>"
    end
  end
end
