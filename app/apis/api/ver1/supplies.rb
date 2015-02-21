module API
  module Ver1
    class Supplies < Grape::API

      helpers do
        # Strong Parametersの設定
        def supply_params
          ActionController::Parameters.new(params).permit(:uuid, :start_date, :end_date)
        end

        # パラメータのチェック
        params :attributes do
          requires :uuid, type: String, desc: "Device uuid."
          requires :start_date, type: Integer, desc: "Device Start date format unixtime ex)1424505618"
          optional :end_date, type: Integer, desc: "Device Start date format unixtime ex)1424505618"
        end

        # パラメータのチェック
        params :id do
          requires :id, type: Integer, desc: "Supply id."
        end
      end
      resource :supply do

        # POST /api/v1/supply/
        desc 'Regist supply.'
        params do
          use :attributes
        end
        post do
          # unixtime2datetime
          params[:start_date]=Time.at(params[:start_date]) unless params[:start_date].to_s.empty?
          supply = Supply.new(supply_params)
          supply.save
          status 201
        end

        desc 'Update end_time'
        params do
          # optional :uuid, type: String, desc: "Device uuid."
          requires :end_date, type: Integer, desc: "Device End date format unixtime ex)1424505618"
        end
        put ':id' do
          params[:end_date]=Time.at(params[:end_date]) unless params[:end_date].to_s.empty?
          supply = Supply.find(params[:id])
          supply.update_attribute(:end_date, params[:end_date])
          # supply.save
          status 201
        end

        # GET /api/v1/supply
        desc 'Return all supply.'
        get do
          Supply.all
        end

        # GET /api/v1/supply/{:id}
        desc 'Return a supply.'
        params do
          requires :id, type: Integer, desc: 'Supply id.'
        end
        get ':id' do
          Supply.find(params[:id])
        end
      end
    end
  end
end
