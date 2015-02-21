class AreasController < InheritedResources::Base

  private

    def area_params
      params.require(:area).permit(:name, :memo)
    end
end

