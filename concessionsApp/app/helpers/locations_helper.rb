module LocationsHelper
  
  def categoryName(num)
    cat = "" 
    case num
    when 0
      cat = "Candy"
    when 1
      cat = "Snacks"
    when 2
      cat = "Cold Beverages"
    when 3
      cat = "Hot Beverages"
    when 4
      cat = "Cooked"
    when 5
      cat = "Morning"
    when 6
      cat = "Fruit"
    else 
      cat = "No Category"
    end

    return cat
  end


end
