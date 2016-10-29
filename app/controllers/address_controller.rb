class AddressController < ApplicationController

    def index
      @addresses = Address.all
    end

    def show
    end

    def new
      @address = Address.new
    end

    def create
      @address = Address.new(address_params)

      if @address.save
        redirect_to @address
      else
        render :new
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
      @address = address.find(params[:id])
    end
  end
