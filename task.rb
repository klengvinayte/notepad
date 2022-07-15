#подключаем библиотеку, чтобы приобразовывать строки к датам
require 'date'

class Task < Post

	def initialize
		super

		@due_date = Time.now
	end

	def read_from_console
		puts "Что нужно сделать? "
		@text = STDIN.gets.chomp

		puts "К какому числу? Укажите дату в формате ДД.ММ.ГГГГ Например 15.08.2022"
		input = STDIN.gets.chomp

		# Вызываем статический метод parse на переменную input
		@due_date = Date.parse(input)
	end

	def to_strings

		time_string =  "Создано: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")}  \n\r \n\r"

		deadline = "Крайний срок: #{@due_date}"

		return [deadline, @text, time_string]

	end
end