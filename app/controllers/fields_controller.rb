class FieldsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_field, only: [:show, :edit]

  def index
    @fields = Field.all
    @fields = policy_scope(Field).order(created_at: :desc)
  end

  def show
    @field = Field.find(params[:id])
    authorize @field
  end

  def new
    @field = Field.new
    authorize @field
  end

  def create
    @field = Field.new(field_params)
    @field.user = current_user
    if @field.save
      redirect_to fields_path(@field)
    else
      render :new
    end
    authorize @field
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


