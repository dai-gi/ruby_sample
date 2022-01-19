puts "1から5の数字で評価を入力してください。終了する場合は「6」を入力してください"
val = gets.to_i

def validation(arg)
  while true
    if arg.class != arg.to_i.class
      puts "数字を入力してください"
    end
end

count = 0
while count <= 2
  while count
    validation(val)
  end

  if val == 6
    puts "終了します"
    exit
  else
    puts "あなたのポイントは：#{val}あなたのコメント：○○○"
  end
end
