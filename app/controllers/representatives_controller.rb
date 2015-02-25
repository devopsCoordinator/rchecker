class RepresentativesController < InheritedResources::Base

  def index
  	@areas = Area.all
  	if params[:q].presence
  	@q = Representative.search(search_params)
 	else
 	@q = Representative.search
    end
    @representatives = @q.result.order(area_id: :asc,name: :asc).decorate
  end

  private

    def representative_params
      params.require(:representative).permit(:name, :email, :mobile, :area_id)
    end
end

