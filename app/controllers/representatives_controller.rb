class RepresentativesController < InheritedResources::Base

  def index
    @representatives = Representative.eager_load(:area)
    @areas = Area.all
    if params[:q].presence
      @q = @representatives.search(search_params)
    else
      @q = @representatives.search
    end
    @representatives = @q.result.order(area_id: :asc,name: :asc)
    @representatives = RepresentativeDecorator.decorate_collection(@representatives)

  end

  def show
    @representative =  Representative.find(params[:id]).decorate
  end

  private

  def representative_params
    params.require(:representative).permit(:name, :email, :mobile, :area_id)
  end
  def search_params
    search_conditions = %i(
      name_cont email_cont
      mobile_cont area_id_eq
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
