require 'pry'

class CashRegister
  
  attr_accessor :discount, :total, :last_transaction, :items 
  
  @items = []
  
  def initialize(discount = 20)
    @total = 0 
    @discount = discount 
    @items << title 
  end 
  
  def add_item(title, price, quantity = 1)
    item_total =  price * quantity
    @total += item_total
  end 
  
  def apply_discount
      percentage = (@discount / 100.to_f) * @total 
      @total = @total - percentage
    if @discount > 0
      "After the discount, the total comes to $#{@total.to_i}."
    else 
     "There is no discount to apply."
    end
  end   
  
  def items
    @items = []
    
  end  
end   








































# class CashRegister 
  
#   attr_accessor :discount, :total, :add_item, :items, :last_transaction
  
#   def initialize(discount = 0)
#     @total = 0
#     @discount = discount 
#     @items = []
#     @last_transaction = 0
#   end   
  
#   def self.total 
#     @@total 
#   end 

#   def add_item(title, price, quantity = 1)
#     self.total += price * quantity
#     quantity.times do  
#       @items << title
#     end  
#     @last_transaction = price * quantity
#   end   
  
#   def apply_discount 
#     @total = @total - @discount * 10
#     if @discount > 0 
#       "After the discount, the total comes to $#{@total}."
#     else 
#       "There is no discount to apply."
#     end 
#   end 
  
#   def void_last_transaction
#     # @last_transaction = price * quantity
#     # @total = @total - @last_transaction 
#   if  @items.length == 0
#     @total = 0.0
#   else
#     @total = @total - @last_transaction
#   end
#   end   
# end   
