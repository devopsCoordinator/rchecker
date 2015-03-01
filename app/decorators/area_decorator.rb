class AreaDecorator < Draper::Decorator
  delegate_all

  def created_at
    object.created_at.strftime("%Y/%m/%d %H:%M:%S")
  end

  def updated_at
    object.updated_at.strftime("%Y/%m/%d %H:%M")
  end
end
