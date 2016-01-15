text = 'w - Enter data, r - Read data, d - Delete, x - Exit'
puts text
choise = ''
while choise != 'x' do
  choise = gets.chomp

  choise_a = case choise
               when 'w'
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
               when 'r'
                 puts 'Your data is:'
                 filename = 'names.txt'
                 string = File.open(filename){|file| file.read}
                 puts string
                 puts text
               when 'd'
                 puts 'Your data is deleted!'
                 filename = 'names.txt'
                 File.delete(filename)
                 puts text
               else
                 puts 'repeet'
                 puts text
             end
  puts choise_a
end











