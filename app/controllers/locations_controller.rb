class LocationsController < InheritedResources::Base

  def index
    @companies = Company.all
    @devices = Device.all
    if params[:q].presence
      @q = Location.search(search_params)
    else
      @q = Location.search
    end
    @locations = @q.result.order(company_id: :asc,department: :asc).decorate
  end

  def new
  	@location = Location.new
    @companies = Company.all
    @devices = Device.all
  end

  def edit
  	@location = Location.find(params[:id])
    @companies = Company.all
    @devices = Device.all
  end

  private

  def location_params
    params.require(:location).permit(:company_id, :device_id, :department, :place)
  end

  def search_params
    search_conditions = %i(
      company_id_eq device_id_eq
      department_cont location_cont
    )
    params.require(:q).permit(search_conditions)
  end

end
