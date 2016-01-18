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
  puts 'First Name, Last Name, Email'
  puts names[0] + ', ' + names[1] + ', ' + names[2]
  filename = 'names.txt'
  File.open(filename, 'a') { |file| file.puts names }
  puts text
end
def show_data
  text = 'w - Enter data, r - Read data, d - Delete, x - Exit'
  puts 'Your data is:'
  filename = 'names.txt'
  string = File.open(filename){|file| file.read}
  puts string
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
      delete_data
    else
      repeet_choice
    end
  puts choise_a
end

