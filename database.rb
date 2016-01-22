def enter_data
  text = 'w - Enter data, r - Read data, d - Delete, x - Exit'
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
  text = 'w - Enter data, r - Read data, d - Delete, x - Exit'
  puts 'Your data is:'
  File.open("names.txt") do |f|
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
def check
  filename = 'names.txt'
  if File.exist?(filename)
    delete_data
  else
    puts 'No such file! Please create it?'
    puts 'y = yes'
    choise = ''
    while choise != 'y'
      choise = gets.chomp
      choise_a = case choise
                   when 'y'
                     enter_data
                   else
                     puts 'Please enter your choise!'
                 end
      puts 'Please enter your choise!'
    else
      enter_data
    end
  puts choise_a
  end
end
text = 'w - Enter data, r - Read data, d - Delete, x - Exit'
puts text
choise = ''
while choise != 'x' do
  choise = gets.chomp
  choise_a = case choise
               when 'w'
                 enter_data
               when 'r'
                 show_data
               when 'd'
                 check
               else
                 repeet_choice
             end
  puts choise_a
end
