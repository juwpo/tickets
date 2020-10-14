if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

#вводим даные билета и пассажира в массив


ticket = {
    билет: "РМ2010398 050298",
    маршрут: "Кез - Санкт-Петербург" ,
    пассажир: "Николаев А.Жульбер",
    паспорт: "56 76 501546",
}

puts "Билет № #{ticket[:билет]}"
puts "Маршрут: #{ticket[:маршрут]}"
puts "Пассажир: #{ticket[:пассажир]}"
puts "Паспорт: #{ticket[:паспорт]}"