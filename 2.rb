text = 'w - Enter data, r - Read data, d - Delete, x - Exit'
puts text
choise = ''
while choise != 'x' do
  choise = gets.chomp
  choise_a = case choise
    when 'w'
    puts 'Enter your name; Last Name; Email'
    data = gets.chomp
    names = [data]
    filename = 'names.txt'
    File.open(filename, 'a') { |file| file.puts names }
    puts 'Name | Last Name | Email'
    File.open("names.txt") do |f|
      while readline = f.gets
        name, last_name, email = readline.chomp.split(";")
        puts "#{name} #{last_name} #{email}"
      end
    end
    puts text
    when 'r'
    puts 'Name | Last Name | Email'
    File.open("names.txt") do |f|
      while readline = f.gets
        name, last_name, email = readline.chomp.split(";")
        puts "#{name} #{last_name} #{email}"
      end
    end
    puts text
    when 'd'
    puts 'Your data is deleted!'
    filename = 'names.txt'
    File.delete(filename)
    puts text
    else
    puts 'Repeat'
    puts text
    end
  puts choise_a
end










