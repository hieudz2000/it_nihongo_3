print '学生の人数を入力してください: '
number = gets.chomp.to_i
count = 1
student = []
number.times do
  puts "#{count}番目の学生の名前は何ですか?"
  printf '名前 > '
  name = gets.chomp
  puts "#{count}番目䛾学籍番号䛿何ですか? > "
  printf '学籍番号 > '
  studentCode = gets.chomp
  student.push({ name: name, studentCode: studentCode })
  count += 1
end

puts '-------------名簿---------------'
student.each_with_index.map do |student, _index|
  puts "学籍番号 #{student[:studentCode]} - 名前は #{student[:name]}"
end
puts '--------------------------------'