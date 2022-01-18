def input_point
  num = 0
  while num <= 10
    point = gets.to_i
    puts "変数の中身"
    p point
    puts "プログラム終了"
    exit
    if point < 1
      puts "エラーです"
    elsif point > 5
      puts "エラーです"
    else
      puts "ありがとうございます"
    end
    num = num + 1
  end
end

input_point