require 'pry'

class HarryPotter

  def initialize
    @total = 0
  end
  
  def calc_price(*books)
    while books.any? { |x| x > 0 }
      books.delete_if { |x| x < 1 }
      books_in_set = books.length
      subtotal = 8 * books_in_set
      @total = subtotal - (subtotal * calc_discount(books_in_set))
      books.map! { |x| x - 1}
    end
    @total
  end

  def calc_discount(books_in_set)
    case books_in_set
        when 5
          percent = 0.25
        when 4 
          percent = 0.20
        when 3
          percent = 0.10
        when 2
          percent = 0.05
        when 1 
          percent = 0
    end
  end
end
