require 'date'
class ShowTodays
  # NOTE: this custom class uses DateTime but this class doesn't
  # inherit from the Date object. However, #todays_date returns a date
  # object of type DateTime which implies it can be operated on and
  # call methods from the DateTime class.
  def initialize
    @d = DateTime.now
  end
  def date
    @d.strftime("%d/%m/%Y")
  end

  def time
    @d.strftime("%H:%M")
  end

  def day
    @d.strftime("%A")
  end

  def month
    @d.strftime("%B")
  end

  def year
    @d.strftime("%Y")
  end
end
