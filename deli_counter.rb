# This empty array represents no customers/no line at Katz Deli
katz_deli = []

# The following method "line" shows customers their current place in line
def line(current_line) # the argument represents the number of people in line
  if current_line.length == 0
    puts "The line is currently empty." # a conditional stating that if the line contains zero customers, say its empty
  else
    current_line.each.with_index(1) do |customer_name, index| #this establishes starting at index
      katz_deli << "#{index}. #{customer_name}" #the empty line will give an index and a name when there are people in line
    end
    puts "The line is currently: #{katz_deli.join(" ")}" #this will state who is in line, turns the array into a string
  end
end


def take_a_number(katz_deli, customer_name) # the method customers will use when they enter the deli, establish place in line
  katz_deli << customer_name # push method adds their name to the line, referring back to the array katz_deli
  puts "Welcome, #{customer_name}. You are number #{katz_deli.length} in line." # acccepts arguments of their name and current line length
end


def now_serving(current_customer) #this method states who is being served
  if current_customer.empty?
    puts "There is nobody waiting to be served!" #if there is noboy being served
  else
    puts "Currently serving #{current_customer[0]}." #will state the name of who is being served
    current_customer.shift #shift retrieves and subsequently removes the first customer from the line
  end
end
