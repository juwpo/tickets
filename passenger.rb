if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

#вводим даные билета и пассажира в массив


ticket = {
    билет => "РМ2010398 050298",
    маршрут: "Кез - Санкт-Петербург" ,
    пассажир: "Николаев А.Жульбер",
    паспорт: "56 76 501546",
    билет1: "КМ2010398 050298",
    маршрут1: "Ижевск - Санкт-Петербург" ,
    пассажир1: "Петрушин А.Юрьевич",
    паспорт1: "52 74 501326",
    билет2: "ЗК2210398 053298",
    маршрут2: "Ижевск - Владивосток" ,
    пассажир2: "Лишо А.Бор",
    паспорт2: "34 42 201326",
}
ticket.each_with_index do |a,i|
  puts "*******Место #{i}*******"
  puts "Билет № #{ticket[:билет]}"
  puts "Маршрут: #{ticket[:маршрут]}"
  puts "Пассажир: #{ticket[:пассажир]}"
  puts "Паспорт: #{ticket[:паспорт]}"
  end