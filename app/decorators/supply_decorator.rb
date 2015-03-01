class SupplyDecorator < Draper::Decorator
  delegate_all
  decorates :supply
  decorates_association :devices
  decorates_association :locations

  def start_date
    object.start_date.strftime("%Y/%m/%d %H:%M:%S")
  end

  def end_date
    object.start_date.strftime("%Y/%m/%d %H:%M:%S")
  end

  def elapsed_time
    object.elapsed_time.to_i
  end

  def elapsed_time_day
    object.elapsed_time.divmod(24*60*60)[0].to_i
  end

  def elapsed_time_hour
    object.elapsed_time.divmod(24*60*60)[1].divmod(60*60)[0].to_i
  end

  def elapsed_time_min
    object.elapsed_time.divmod(24*60*60)[1].divmod(60*60)[1].divmod(60)[0].to_i
  end

  def elapsed_time_sec
    object.elapsed_time.divmod(24*60*60)[1].divmod(60*60)[1].divmod(60)[1].to_i
  end

  def created_at
    object.created_at.strftime("%Y/%m/%d %H:%M:%S")
  end

  def updated_at
    object.updated_at.strftime("%Y/%m/%d %H:%M:%S")
  end

end


