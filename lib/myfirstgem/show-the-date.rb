require 'date'
class ShowTheDate
  def todays_date
    d= DateTime.now
    d.strftime("%d/%m/%Y")
  end
end
