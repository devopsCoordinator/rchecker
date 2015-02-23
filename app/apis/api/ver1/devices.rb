module API
  module Ver1
    class Devices < Grape::API

      helpers do
        # Strong Parametersの設定
        def device_params
          ActionController::Parameters.new(params).permit(:uuid, :model, :memo )
        end

        # パラメータのチェック
        # パラメーターの必須、任意を指定することができる。
        # use :attributesという形で使うことができる。
        params :attributes do
          requires :uuid, type: String, desc: "Device uuid."
          requires :model, type: String, desc: "Device model."
        end

        # パラメータのチェック
        params :id do
          requires :id, type: Integer, desc: "Device id."
        end
      end

      resource :device do

        # POST /api/v1/device/
        desc 'Regist device.'
        params do
          use :attributes
        end
        post do
          device = Device.new(device_params)
          device.save
          status 201
        end

        # GET /api/v1/device
        desc 'Return all device.'
        get do
          Device.all
        end

        # GET /api/v1/device/{:id}
        desc 'Return a device.'
        params do
          requires :id, type: Integer, desc: 'device id.'
        end
        get ':id' do
          Device.find(params[:id])
        end

      end
    end
  end
end
