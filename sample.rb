
while true
  puts "1から5の数字で評価を入力してください。終了する場合は「6」を入力してください"
  point = gets.to_i

  if point == 6
    puts "終了します"
    break

  elsif point != 0
    puts "コメントを入力してください"
    comment = gets
    puts "あなたのポイント: #{point}"
    puts "あなたのコメント: #{comment}"
  else
    puts "数字を入力してください"
  end
end
