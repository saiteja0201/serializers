class UserlistsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :create
  wrap_parameters :userlist,
                  format: [:json, :url_encoded_form, :multipart_form],
                  include: [:name, :email, :password, :number, :city]

  def create
    @userlist = Userlist.new(userlist_params)
    if @userlist.save
      render json: @userlist,  serializer: UserlistSerializer, status: :created 
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @userlist = Userlist.find(params[:id])
  end

  private

  def userlist_params
    params.require(:userlist).permit(:name, :email, :password, :number, :city)
  end
end
