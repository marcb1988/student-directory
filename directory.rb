def input_students
    puts "Please enter the name of the student followed by the cohort and student age: "
    puts "To finish, just hit return twice"
    students = []
    name = gets.strip.capitalize
    cohort = gets.strip.to_sym.upcase
    age = gets.strip

    while !name.empty? do
            if cohort.empty?
                cohort = "unknown"
            end
            if age.empty?
                age = "unknown"
            end
        students << {name: name, cohort: cohort, age: age}
                if students.count < 2
                    puts "We only have 1 student"
                else 
                    puts "Now we have #{students.count} students"
                end
        puts "More students?"
        name = gets.strip.capitalize
            break if name.empty?
        cohort = gets.strip.to_sym.upcase
        age = gets.strip
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
    if students.count > 1
        puts "Overall we have #{students.count} great students.".center(50)
    else
        puts "We have one great student".center(50)
    end
end

def sort_by_cohort(students)
    puts " "
    puts "Students Sorted By Cohort".center(50)
    students.sort_by { |student| student[:cohort] }.map { |student| puts"#{student[:name]} - #{student[:cohort]} - #{student[:age]}".center(50) }
end

students = input_students
print_header
print(students)
sort_by_cohort(students)
print_footer(students)
