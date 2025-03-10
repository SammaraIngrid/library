class BookcasesController < ApplicationController
  before_action :set_bookcase, only: %i[ show update destroy ]

  # GET /bookcases
  def index
    @bookcases = Bookcase.all

    render json: @bookcases
  end

  # GET /bookcases/1
  def show
    render json: @bookcase
  end

  # POST /bookcases
  def create
    @bookcase = Bookcase.new(bookcase_params)

    if @bookcase.save
      render json: @bookcase, status: :created, location: @bookcase
    else
      render json: @bookcase.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bookcase/1
  def update
    if @bookcase.update(bookcase_params)
      render json: @bookcase
    else
      render json: @bookcase.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bookcase/1
  def destroy
    @bookcase.destroy!
  end

  private
    def set_bookcase
      @bookcase = Bookcase.find(params[:id])
    end

    def bookcase_params
      params.require(:bookcase).permit(:limit, :name)
    end
end
