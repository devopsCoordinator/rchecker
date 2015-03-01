class RepresentativeDecorator < Draper::Decorator
  delegate_all
  decorates_association :area
    
  def created_at
    object.created_at.strftime("%Y/%m/%d %H:%M:%S")
  end

  def updated_at
    object.updated_at.strftime("%Y/%m/%d %H:%M:%S")
  end

end
