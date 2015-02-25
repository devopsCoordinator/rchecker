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
  def search_params
    search_conditions = %i(
      name_cont email_cont
      mobile_cont
      area_id_eq
    )
    params.require(:q).permit(search_conditions)
  end
end
