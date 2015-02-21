class DevicesController < InheritedResources::Base

  private

    def device_params
      params.require(:device).permit(:uuid, :model, :department, :location, :memo)
    end
end

