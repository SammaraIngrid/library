class BookcasesController < ApplicationController
  before_action :set_bookcase, only: %i[ show update destroy ]

  def index
    @bookcases = Bookcase.all

    render json: @bookcases
  end

  def show
    render json: @bookcase
  end

  def create
    @bookcase = Bookcase.new(bookcase_params)

    if @bookcase.save
      render json: @bookcase, status: :created, location: @bookcase
    else
      render json: @bookcase.errors, status: :unprocessable_entity
    end
  end

  def update
    if @bookcase.update(bookcase_params)
      render json: @bookcase
    else
      render json: @bookcase.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @bookcase.destroy!
  end

  private
    def set_bookcase
      @bookcase = Bookcase.find(params[:id])
    end

    def bookcase_params
      params.require(:bookcase).permit(:limit)
    end
end
