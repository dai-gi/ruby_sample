
while true
  puts "1から5の数字で評価を入力してください。終了する場合は「6」を入力してください"
  point = gets.to_i

  if point == 0
    puts "数字を入力してください"
  elsif point == 6
    puts "終了します"
    exit
  else
    comment = gets
    puts "あなたのポイント：#{point} あなたのコメント：#{comment}"
  end
end
