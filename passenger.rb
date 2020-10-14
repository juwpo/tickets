if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

#вводим даные билета и пассажира в массив


tickets = [
    {
    билет: "РМ2010398 050298",
    маршрут: "Кез - Санкт-Петербург" ,
    пассажир: "Николаев А.Жульбер",
    паспорт: "56 76 501546",
},
{
    билет: "КМ2010398 050298",
    маршрут: "Ижевск - Санкт-Петербург" ,
    пассажир: "Петрушин А.Юрьевич",
    паспорт: "52 74 501326",
},
{
    билет: "ЗК2210398 053298",
    маршрут: "Ижевск - Владивосток" ,
    пассажир: "Лишо А.Бор",
    паспорт: "34 42 201326",
}
]

tickets.each_with_index do |pas, number|
  puts "*******Место № #{number +1}*******"
  puts "Билет № #{pas[:билет]}"
  puts "Маршрут: #{pas[:маршрут]}"
  puts "Пассажир: #{pas[:пассажир]}"
  puts "Паспорт: #{pas[:паспорт]}"
  end