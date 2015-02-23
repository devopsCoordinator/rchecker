class DevicesController < InheritedResources::Base

  private

    def device_params
      params.require(:device).permit(:uuid, :model, :memo)
    end
end

