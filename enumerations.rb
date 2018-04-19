chickens = ["Margeret", "Hetty", "Henrietta", "Audrey", "Mabel"]
#
# for chicken in chickens
#   p chicken
# end
#
# #when only using one line of code in an each loop, use curly brackets
# chickens.each {|chicken| p chicken}
# #when using multiple lines of code in an each loop, use do > end and put code between
# chickens.each do |chicken|
#   shouting_chicken = chicken.upcase()
#   p shouting_chicken
# end
#
# name_lengths = []
#
# chickens.each {|chicken| name_lengths << chicken.length()}
#
name_lengths = chickens.map {|chicken| chicken.length()}

p name_lengths
#
# p name_lengths
#
#
# #If you run an each with 'index' as the second element inside the pipes '||' you can get the position of the first element in the array
# chickens.each_with_index { |chicken , index|  p "#{chicken} is at #{index}"}
#
# #find - returns first item that matches condition
# #find_all returns all items that match the condition/sometimes called select
# p chickens.find {|chicken| chicken[0] == "H"} #chicken[0] finds first letter in a string (not first item in an array)
#
# p chickens.find_all {|chicken| chicken[0] == "H"}
#
# #.reduce
# #below line reduces an array of strings into a single sting
# p chickens.reduce{ |list, chicken| list + ", " + chicken}
# #below line reduces array of numbers into the sum of all numbers
# numbers = [1, 2, 3, 4, 5, 6, 7, 8]
# sum = numbers.reduce { |total, number| total + number}
# p sum
#
# #other good looping methods (all outlined above)
# # find
# # find_all / select -- can also use reject to find the oppsite of select (select finds 3 items out of 7, reject finds other 4)
# # each
# # map / collect
# # reduce / inject
