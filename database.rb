def enter_data
  text = 'w - Enter data, x - Exit'
  puts 'Enter your name'
  name = gets.chomp
  puts 'Enter your surname'
  surname = gets.chomp
  puts 'Enter your e-male'
  emale = gets.chomp
  names = [name, surname, emale]
  puts 'Your data is:'
  puts "First Name: #{names[0]}; Last Name: #{names[1]}; Email: #{names[2]}"
  filename = 'names.txt'
  File.open(filename, 'a') { |file| file.puts "#{names[0]}; #{names[1]}; #{names[2]}"}
  puts text
end
def show_data
  text = 'w - Enter data, x - Exit'
  puts 'Your data is:'
  File.open('names.txt') do |f|
    f.each do |readline|
      name, last_name, email = readline.chomp.split(";")
      puts "First name: #{name}, Last name: #{last_name}, Email: #{email}"
    end
  end
  puts text
end
def delete_data
  text = 'w - Enter data, r - Read data, d - Delete, x - Exit'
  puts 'Your data is deleted!'
  filename = 'names.txt'
  File.delete(filename)
  puts text
end
def repeet_choice
  text = 'w - Enter data, r - Read data, d - Delete, x - Exit'
  puts 'Please repeet'
  puts text
end
def check_delete
  text = 'w - Enter data, x - Exit'
  filename = 'names.txt'
  if File.exist?(filename)
    delete_data
  else
    puts 'No such file!'
    puts text
  end
end
def check_show
  text = 'w - Enter data, x - Exit'
  filename = 'names.txt'
  if File.exist?(filename)
    show_data
  else
    puts 'No such file!'
    puts text
  end
end
def end_of_program
  puts 'Goodbye my friend)'
end
text = 'w - Enter data, r - Read data, d - Delete, x - Exit'
puts text
choise = ''
while choise != 'x' do
  choise = gets.chomp
  case choise
         when 'w'
           enter_data
         when 'r'
           check_show
         when 'd'
           check_delete
         when 'x'
           end_of_program
         else
           repeet_choice
  end

end
