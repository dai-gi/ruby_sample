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
    # @basket を買い物かごとして使用する
  end
end