# first we put the students into an array

# we created our methods
def input_students
    puts "Please enter the names of the students: "
    puts "To finish, just hit return twice"
    # we then create an empty array
    students = []
    # we now need to "gets" the names
    name = gets.chomp
    # while it is not empty, repeat the code
    while !name.empty? do
        # add the student to the array we created
        students << {name: name, cohort: :november}
        puts "Now we have #{students.count} students"
        # then get the next name
        name = gets.chomp
    end
    #return the array
    students
end

def print_header
    puts "The students of Villains Academy"
    puts "---------"
end

def print(students)
    students.each do |student|
        puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
end

def print_footer(students)
    puts "Overall we have #{students.count} great students."
end
# then we call the methods
students = input_students
print_header
print(students)
print_footer(students)
