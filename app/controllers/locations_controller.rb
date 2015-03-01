class LocationsController < InheritedResources::Base

  def index
    @locations = Location.eager_load(:company,:device)
    @companies = Company.all
    @devices = Device.all
    if params[:q].presence
      @q = @locations.search(search_params)
    else
      @q = @locations.search
    end
    @locations = @q.result.order(company_id: :asc,department: :asc)
    @locations = LocationDecorator.decorate_collection(@locations)
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

  def show
    @location =  Location.find(params[:id]).decorate
  end

  private

  def location_params
    params.require(:location).permit(:company_id, :device_id, :department, :place)
  end

  def search_params
    search_conditions = %i(
      company_id_eq device_id_eq
      department_cont location_cont
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
