class CashRegister
  attr_accessor :total :employee_discount :items :old_total
  
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
    self.total += price
    @items << title
  end
  
  def apply_discount
    self.total *= @employee_discount
    return "Success, your new total is #{self.total}"
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    self.total - @old_total
  end
end