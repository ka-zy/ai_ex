class AddressesController < ApplicationController
  def index
    @addresses = Address.all
    @com = @addresses.select(:company).distinct
    @gro = @addresses.select(:company, :group).distinct
    @dep = @addresses.select(:company, :group, :depertment).distinct
    @sec = @addresses.select(:company, :group, :depertment, :section).distinct
    @unit = @addresses.select(:company, :group, :depertment, :section, :unit).distinct
    # @users = 
  end

  def search

    @addresses = Address.search(params[:keyword])
 
  end

  # def show
  #   @addresses = Address.all(params[:id])
 
  # end

  # def new
  #   @address = Address.new
  # end

  # private

  # def address_params
  #   params.permit(:name)
  # end
end
