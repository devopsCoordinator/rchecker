class SupplyDecorator < Draper::Decorator
  delegate_all
  decorates :supply
  decorates_association :devices
  decorates_association :locations

  def start_date
    object.start_date.strftime("%Y/%m/%d %H:%M:%S")
  end

  def end_date
    if object.end_date.present?
      object.end_date.strftime("%Y/%m/%d %H:%M:%S")
    end
  end

  def elapsed_time
    if object.elapsed_time.present?
      object.elapsed_time.to_i
    end
  end

  def elapsed_time_day
    if object.elapsed_time.present?
      object.elapsed_time.divmod(24*60*60)[0].to_i
    end
  end

  def elapsed_time_hour
    if object.elapsed_time.present?
      object.elapsed_time.divmod(24*60*60)[1].divmod(60*60)[0].to_i
    end
  end

  def elapsed_time_min
    if object.elapsed_time.present?
      object.elapsed_time.divmod(24*60*60)[1].divmod(60*60)[1].divmod(60)[0].to_i
    end
  end

  def elapsed_time_sec
    if object.elapsed_time.present?
      object.elapsed_time.divmod(24*60*60 )[1].divmod(60*60)[1].divmod(60)[1].to_i
    end
  end

  def created_at
    object.created_at.strftime("%Y/%m/%d %H:%M:%S")
  end

  def updated_at
    object.updated_at.strftime("%Y/%m/%d %H:%M:%S")
  end

end
