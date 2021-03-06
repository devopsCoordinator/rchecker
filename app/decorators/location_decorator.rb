class LocationDecorator < Draper::Decorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

  # def company_name
  #  object.company.name
  # end

  # def device_uuid
  #   object.device.uuid
  # end

  def created_at
    object.created_at.strftime("%Y/%m/%d %H:%M")
  end

  def updated_at
    object.updated_at.strftime("%Y/%m/%d %H:%M")
  end

end
