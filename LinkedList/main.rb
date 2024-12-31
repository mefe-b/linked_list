list = LinkedList.new

list.append("dog")
list.append("cat")
list.append("parrot")
list.append("hamster")

puts "Liste: #{list}"

list.prepend("bird")
puts "Başına 'bird' eklendi: #{list}"

puts "Listedeki toplam düğüm sayısı: #{list.size}"

puts "Başındaki eleman: #{list.head.value}"
puts "Sonundaki eleman: #{list.tail.value}"

list.insert_at("snake", 2)
puts "'snake' 2. indekse eklendi: #{list}"

list.remove_at(3)
puts "3. indeksteki eleman kaldırıldı: #{list}"

puts "Final liste: #{list.to_s}"
