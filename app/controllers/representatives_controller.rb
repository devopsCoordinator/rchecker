class RepresentativesController < InheritedResources::Base

  private

    def representative_params
      params.require(:representative).permit(:name, :email, :mobile, :area_id, :memo)
    end
end

