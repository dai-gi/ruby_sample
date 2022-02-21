# 商品クラスの設定
class Grocery
  attr_accessor :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end
end


# 購入者クラスの設定
class Customer
  attr_accessor :name, :address

  def initialize(name, address)
    @name = name
    @address = address
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
