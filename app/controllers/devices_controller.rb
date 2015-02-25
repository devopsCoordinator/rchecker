class DevicesController < InheritedResources::Base

  def index
  	if params[:q].presence
  	@q = Device.search(search_params)
 	else
 	@q = Device.search
    end
    @devices = @q.result.order(model: :asc,uuid: :asc).decorate
  end

  private

    def device_params
      params.require(:device).permit(:uuid, :model, :memo)
    end

    def search_params
  	search_conditions = %i(
    uuid_cont_cont model_cont
    memo_cont
    )
      params.require(:q).permit(search_conditions)
    end

end

