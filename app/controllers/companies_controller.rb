class CompaniesController < InheritedResources::Base

  private

    def company_params
      params.require(:company).permit(:name, :area_id, :representative_id, :memo)
    end
end

