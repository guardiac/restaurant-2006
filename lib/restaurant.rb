class Restaurant
  attr_reader :opening_time, :name, :dishes
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours)
    (opening_time.to_i + hours).to_s + ":00"
  end

  def add_dish(dish_name)
    @dishes << dish_name
  end

  def open_for_lunch?
    opening_time.to_i < 12
  end

  def menu_dish_names
    @dishes.map { |dish| dish.upcase }
  end

  def announce_closing_time(hours)
    if closing_time(hours).to_i < 12
      closing_hour = closing_time(hours)
      suffix = "AM"
    else
      closing_hour = closing_time(hours - 12)
      suffix = "PM"
    end
    "#{name} will be closing at #{closing_hour}#{suffix}"
  end

end
