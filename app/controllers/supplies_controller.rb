class SuppliesController < InheritedResources::Base

  def show
    @company = Company.eager_load(:locations,:devices).where(devices: {id: params[:id]}).last
    @device = Device.find(params[:id])
    @supplies = Supply.eager_load(:device).where(uuid: @device.uuid)
    @elapsed_target = @supplies.where.not(end_date: nil)
    @supplies = SupplyDecorator.decorate_collection(@supplies)
    @elapsed_average = @elapsed_target.average(:elapsed_time).to_i
    @elapsed_average_days = @elapsed_average.divmod(24*60*60)
    @elapsed_average_day = @elapsed_average_days[0].to_i
    @elapsed_average_hours = @elapsed_average_days[1].divmod(60*60)
    @elapsed_average_hour = @elapsed_average_hours[0].to_i
    @elapsed_average_mins =  @elapsed_average_hours[1].divmod(60)
    @elapsed_average_min = @elapsed_average_mins[0].to_i
    @elapsed_average_sec = @elapsed_average_mins[1].to_i
  end

  private

    def supply_params
      params.require(:supply).permit(:uuid, :start_date, :end_date, :elapsed_time)
    end
end

