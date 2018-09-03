class CashRegister
  attr_accessor :total :employee_discount
  
  def initialize(employee_discount)
    @total = 0
    @employee_discount = employee_discount
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity=1)
    @total += price
  end
  
  def apply_discount
    @total * @employee_discount
  end