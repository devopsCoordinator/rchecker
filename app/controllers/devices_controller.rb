class DevicesController < InheritedResources::Base

  def index
    if params[:q].presence
      @q = Device.search(search_params)
    else
      @q = Device.search
    end
    @devices = @q.result.order(model_type: :asc,uuid: :asc).decorate
  end

  def history
    @company = Company.eager_load(:locations,:devices).where(devices: {id: params[:id]}).last
    @device = Device.find(params[:id])
    @supplies = Supply.eager_load(:device).where(uuid: @device.uuid)
    @elapsed_target = @supplies.where.not(end_date: nil)
    @elapsed_average = @elapsed_target.average(:elapsed_time).to_i
  end

  private

  def device_params
    params.require(:device).permit(:uuid, :model, :memo)
  end

  def search_params
    search_conditions = %i(
      uuid_cont model_type_cont
      memo_cont
      created_at_gteq(1i)
      created_at_gteq(2i)
      created_at_gteq(3i)
      created_at_lteq_end_of_day(1i)
      created_at_lteq_end_of_day(2i)
      created_at_lteq_end_of_day(3i)
      s
    )
    params.require(:q).permit(search_conditions)
  end

end
