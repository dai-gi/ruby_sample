# 商品クラスの設定
class Grocery
  attr_accessor :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end
end


# ユーザクラスの設定
class User
  attr_accessor :name, :address

  def initialize(arg1, arg2=nil, arg3=nil)
    @bname = arg1
    @address = arg2
  end
end


# 販売者クラスの設定
class Seller < User
  attr_accessor :name, :shop, :address

  def initialize(name, shop)
    super
    @shop = shop  # 店の名前を取り込む
    @orders = []  # 購入者ごとの購入内容を記録するいれもの
  end

  def orders(order)
    # 購入者の購入内容を引数（order）で受け取り、複数の購入者情報を@ordersに保存する
    @orders << order
  end

  def orderling_list
    # 購入者の購入内容に基づいて、購入者ごとの注文リストを表示する
    @sum = 0
    puts "=====　顧客別注文リスト(#{name}, #{shop})　====="
    @orders.each do |order|
      puts "顧客名: #{order[0]}, 金額: #{order[1]}, 日時：#{order[2].strftime("%Y-%m-%d")}}"
      @sum += order[1]
    end
    puts "--------------合計：#{@sum}"
    puts "===================================="
  end
end


# 購入者クラスの設定
class Customer < User
  attr_accessor :name, :address

  def initialize(name, address)
    super
    @basket = [] # 空の買い物かごを用意する
  end

  def shopping(groceries)
    # 商品リストに基づき、ショッピングの処理を行う
    # 買い物を開始する.
    grocery_list(groceries)
    shopping_end = nil
    while shopping_end != "yes" do
      # 商品選択
      puts "商品番号選択"
      number = gets.to_i
      # 数入力
      puts "商品数量入力"
      quantity = gets.to_i
      entry(groceries[number], quantity)
      puts "買い物終了するか？ yes/no"
      shopping_end = gets.chomp
    end
    # @basket を買い物かごとして使用する
    shopping_list(@basket)
    # shopping_listの中で@sumが計算される
    @order = [name, @sum, Time.now]
  end


  # 以下はプライベートメソッド
  private
  def grocery_list(groceries)
    puts "------食料品リスト------"
    groceries.each_with_index do |grocery, i|
      puts "#{i}: #{grocery.name}, #{grocery.price}"
    end
  end

  def entry(grocery, quantity)
    @basket << [grocery, quantity]
  end

  def shopping_list(basket)
    @sum = 0
    puts "=====　買い物リスト(#{name}/#{address})　====="
    basket.each do |grocery, quantity|
      money = grocery.price * quantity
      puts "商品名: #{grocery.name}, 数量: #{quantity}, 金額：#{money}"
      @sum += money
    end
    puts "----------合計：#{@sum}-------------"
    puts "===================================="
  end
end


# 商品リストの作成（オブジェクト）----------------
groceries = []     # 商品リストの入れ物を配列として用意する。
# それぞれの商品をインスタンス化して、商品配列に保存する。
groceries = Grocery.new("バナナ", 300),
            Grocery.new("パン", 150),
            Grocery.new("牛乳", 230),
            Grocery.new("卵", 280),
            Grocery.new("肉", 800),
            Grocery.new("魚", 500)
