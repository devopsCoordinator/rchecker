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
    @supply_historys = Supply.eager_load(:device).where(uuid: @device.uuid)
  end

  private

  def device_params
    params.require(:device).permit(:uuid, :model, :memo)
  end

  def search_params
    search_conditions = %i(
      uuid_cont model_type_cont
      memo_cont
    )
    params.require(:q).permit(search_conditions)
  end

end
