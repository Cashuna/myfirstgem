require 'date'
class ShowTheDate
  # NOTE: this custom class uses DateTime but this class doesn't
  # inherit from the Date object. However, #todays_date returns a date
  # object of type DateTime which implies it can be operated on and
  # call methods from the DateTime class.
  def todays_date
    d= DateTime.now
    d.strftime("%d/%m/%Y")
  end
end
