def input_point
  num = 0
  while num <= 10
    point = gets.to_i
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