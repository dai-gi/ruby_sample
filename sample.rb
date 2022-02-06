def record(point, comment)
  post = "ポイント: #{point} コメント: #{comment}"
  file = File.open("data.txt", "a")
  file.puts(post)
  file.close
end

def history
  read_file = File.open("data.txt", "r")
  puts read_file.read
  read_file.close
end

while true
  puts "実施したい処理を選択してください"
  puts "1:評価ポイントとコメントを入力する"
  puts "2:今までの結果を確認する"
  puts "3:終了する"

  num = gets.to_i
  case num
  when 1
    puts "1から5の数字で評価を入力してください。終了する場合は「6」を入力してください"
    point = gets.to_i
    if point <= 0 || point > 5
      puts "1から5を入力してください"
    else
      puts "コメントを入力してください"
      comment = gets
      record(point, comment)
    end
  when 2
    puts "これまでの結果"
    history()
  when 3
    puts "終了します"
    break
  else
    puts "1から3で入力してください"
  end
end
