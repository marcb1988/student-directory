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

def interactive_menu
    students = []
    loop do
      # 1. print the menu and ask the user what to do
      puts "1. Input the students"
      puts "2. Show the students"
      puts "9. Exit" # 9 because we'll be adding more items
      # 2. read the input and save it into a variable
      selection = gets.chomp
      # 3. do what the user has asked
      case selection
      when "1"
        students = input_students
      when "2"
        print_header
        print(students)
        print_footer(students)
      when "9"
        exit # this will cause the program to terminate
      else
        puts "I don't know what you meant, try again"
      end
    end
  end

  interactive_menu
