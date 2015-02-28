class CompaniesController < InheritedResources::Base

  def index
    @areas = Area.all
    @representatives = Representative.all
    @companies=Company.eager_load(:area,:representative)
    if params[:q].presence
      @q = @companies.search(search_params).per(10)
    else
      @q = @companies.search
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
