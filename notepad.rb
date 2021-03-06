require_relative "post.rb"
require_relative "link.rb"
require_relative "task.rb"
require_relative "memo.rb"

puts "Привет! Я твой блокнот."
puts "Что хотите записать в блокнот?"

choises = Post.post_types

choise = -1

until choise >= 0 && choise < choises.size

	choises.each_with_index do |type, index|
		puts "\t#{index}. #{type}"
	end

	choise = STDIN.gets.chomp.to_i
end

entry = Post.create(choise)

entry.read_from_console

entry.save

puts "Ура! Запись сохранена."