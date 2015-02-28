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
          optional :start_date, type: Integer, desc: "Device Start date format unixtime ex)1424505618"
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
          # あとで実装
          # デバイス側から通信が出来なかった際にはローカルストレージにstart_timeを記録し
          #　パラーメタにunixtimeでつめて送ったら、datetime変換して保存処理を入れる
          # unixtime2datetime
          # params[:uuid]
          # params[:start_date]=Time.at(params[:start_date]) unless params[:start_date].to_s.empty?
          # @supply = Supply.new(supply_params)
          @supply=Supply.new(uuid: params[:uuid],start_date: Time.new)
          @supply.save
          status 201
        end

        # PUT /api/v1/supply/{:uuid}
        desc 'Update end_time'
        params do
          use :attributes
        end
        put ':uuid' do
          # あとで実装
          # デバイス側から通信が出来なかった際にはローカルストレージにend_timeを記録し
          #　パラーメタにunixtimeでつめて送ったら、datetime変換して保存処理を入れる

          @supply = Supply.where(uuid: params[:uuid]).last
          @end_date=Time.now
          @elapsed_time=@end_date-@supply.start_date
          @supply.update({end_date: @end_date,elapsed_time: @elapsed_time})
          # supply.save
          status 201
        end

        # GET /api/v1/supply
        desc 'Return all supply.'
        get do
          Supply.all
        end

        # GET /api/v1/supply/{:uuid}
        desc 'Return a supply.'
        params do
          requires :uuid, type: String, desc: 'Supply uuid.'
        end
        get ':uuid' do
          Supply.where(uuid: params[:uuid])
        end
      end
    end
  end
end
