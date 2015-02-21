module API
  module Ver1
    class Root < Grape::API
      # http://localhost:3000/api/v1/
      version 'v1'
      format :json

      # for 404
      rescue_from ActiveRecord::RecordNotFound do |e|
        rack_response(message:  e.message, status: 404)
      end

      # for 400
      rescue_from Grape::Exceptions::ValidationErrors do |e|
        rack_response e.to_json, 400
      end

      # for 500
      rescue_from :all do |e|
        error_response(message: "Internal server error", status: 500)
      end

      mount API::Ver1::Devices
      mount API::Ver1::Supplies
    end
  end
end
