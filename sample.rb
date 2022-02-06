posts = []

while true
  puts "1から5の数字で評価を入力してください。終了する場合は「6」を入力してください"
  point = gets.to_i

  if point == 6
    puts "終了します"
    break

  elsif point != 0
    puts "コメントを入力してください"
    comment = gets
    post = "ポイント: #{point} コメント: #{comment}"
    file = File.open("data.txt", "a")
    file.puts(post)
    file.close
    read_file = File.open("data.txt", "r")
    puts read_file.read
    read_file.close
  else
    puts "数字を入力してください"
  end
end
