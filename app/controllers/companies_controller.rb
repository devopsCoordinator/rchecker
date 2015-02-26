class CompaniesController < InheritedResources::Base

  def index
    @areas = Area.all
    @representatives = Representative.all
    if params[:q].presence
      @q = Company.search(search_params)
    else
      @q = Company.search
    end
    @companies = @q.result.order(area_id: :asc,name: :asc).decorate
  end

  def hasdevice
    @company=Company.find(params[:id])
    @devices=Device.eager_load(:locations,:companies).where(companies: {id: params[:id]})
  end

  private

  def company_params
    params.require(:company).permit(:name, :area_id, :representative_id, :memo)
  end

  def search_params
    search_conditions = %i(
      name_cont area_id_eq
      representative_id_eq
      memo_cont
    )
    params.require(:q).permit(search_conditions)
  end
end
