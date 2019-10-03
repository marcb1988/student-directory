def input_students
    puts "Please enter the name of the student followed by the cohort and student age: "
    puts "To finish, just hit return twice"
    students = []
    name = gets.chomp
    cohort = gets.chomp.to_sym
    age = gets.chomp

    while !name.empty? do
        students << {name: name, cohort: cohort, age: age}
        puts "Now we have #{students.count} students"
        puts "Name? "
        name = gets.chomp
            break if name.empty?
        cohort = gets.chomp
        age = gets.chomp
    end
    students
end

def print_header
    puts "The students of Villains Academy".center(50)
    puts "---------".center(50)
end

def print(students)

    i = 0 
    while i < students.size
        puts "#{i+1}. #{students[i][:name]} (#{students[i][:cohort]} cohort) (#{students[i][:age]})".center(50)
        i += 1
    end
end

def print_footer(students)
    puts "Overall we have #{students.count} great students.".center(50)
end

students = input_students
print_header
print(students)
print_footer(students)
