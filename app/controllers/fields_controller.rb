class FieldsController < ApplicationController
  before_action :set_field, only: [:show, :edit]

  def index
    @fields = Field.all
  end

  def show
  end

  def new
    @field = Field.new
  end

  def create
    @field = Field.new(field_params)
    @field.user = current_user
    if @field.save
      redirect_to fields_path(@field)
    else
      render :new
    end
  end

  # def edit
  # end

  # def update
  # end

  # def destroy
  # end

  private

  def set_field
    @field = Field.find(params[:id])
  end

  def field_params
    params.require(:field).permit(:name, :category, :size, :rating, :price, :description, :address, :latitude, :longitude)
  end

end


