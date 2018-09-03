class CashRegister
  attr_accessor :total :items
  attr_reader :employee_dicount :old_total
  
  def initialize(employee_discount)
    @total = 0
    @employee_discount = employee_discount
    @items = []
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity=1)
    @old_total = self.total
    self.total += (price * quantity)
    @items << title
  end
  
  def apply_discount
    self.total *= @employee_discount
    return "After the discount, the total comes to $#{self.total}."
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    self.total - @old_total
  end
  
end