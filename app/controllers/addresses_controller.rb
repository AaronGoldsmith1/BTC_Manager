class AddressesController < ApplicationController
  before_action :set_address, only: [:show, :edit, :update, :destroy]
    def index


      @user = User.find_by(id: session[:user_id])
      @addresses = @user.addresses
    end

    def show

      # require 'rest-client'
      #
      # begin
      #   @response = RestClient.get 'https://api.coinprism.com/v1/addresses/'+@address.loc+'?format=JSON '
      #   @BTC = JSON.parse(@response)["balance"]/100000000.0
      # rescue
      #   @BTC = "Invalid Address"
      # end
    end



    def new
      @address = Address.new
      @user_id = session[:user_id]
    end

    def create
      @address = Address.new(address_params)
        @address.user_id = session[:user_id]

      if @address.save
        #render json: @address
        redirect_to action: "show", id: @address.id
      else
        render json:@address
      end
    end

    def edit

    end

    def update

      if @address.update_attributes(address_params)
        redirect_to @address
      else
        render :edit
      end
    end

    def destroy
      @address.destroy
      redirect_to addresses_path
    end

  private
    def address_params
      params.require(:address).permit(:loc, :label, :memo, :balance, :total_rec, :total_sent, :total_fees)
    end

    def set_address
      @address = Address.find(params[:id])
    end
  end
