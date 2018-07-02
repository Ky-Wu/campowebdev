class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :exclude_banned_users

  # GET /requests
  def index
    @requests = Request.all
  end

  # GET /requests/1
  def show
  end

  # GET /requests/new
  def new
    @request = Request.new
  end

  # GET /requests/1/edit
  def edit
  end

  # POST /requests
  def create
    @request = Request.new(request_params)

    if @request.save
      redirect_to @request, notice: 'Request was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /requests/1
  def update
    if @request.update(request_params)
      redirect_to @request, notice: 'Request was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /requests/1
  def destroy
    @request.destroy
    redirect_to requests_url, notice: 'Request was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def request_params
      params.require(:request).permit(:owner, :contact, :description, :deadline)
    end

    #Do not allow banned users to interact with requests
    def exclude_banned_users
      if current_user.banned?
        flash[:alert] = "You have been denied request privledges."
	redirect_to root_url
      end
    end
end
