class AreasController < InheritedResources::Base

  def index
   	if params[:q].presence
  	  @q = Area.search(search_params)
 	else
 	  @q = Area.search
    end
    @areas = @q.result.order(name: :asc,name: :asc).decorate
   end

  private

  def area_params
    params.require(:area).permit(:name, :memo)
  end

  def search_params
    search_conditions = %i(
      name_cont memo_cont
    )
    params.require(:q).permit(search_conditions)
  end

end
