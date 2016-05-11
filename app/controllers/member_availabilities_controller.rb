class MemberAvailabilitiesController < ApplicationController
  before_action :set_member_availability, only: [:show, :edit, :update, :destroy]

  # GET /member_availabilities
  # GET /member_availabilities.json
  def index
    @member_availabilities = MemberAvailability.all
  end

  # GET /member_availabilities/1
  # GET /member_availabilities/1.json
  def show
  end

  # GET /member_availabilities/new
  def new
    @member_availability = MemberAvailability.new
  end

  # GET /member_availabilities/1/edit
  def edit
  end

  # POST /member_availabilities
  # POST /member_availabilities.json
  def create
    @member_availability = MemberAvailability.new(member_availability_params)

    respond_to do |format|
      if @member_availability.save
        format.html { redirect_to @member_availability, notice: 'Member availability was successfully created.' }
        format.json { render :show, status: :created, location: @member_availability }
      else
        format.html { render :new }
        format.json { render json: @member_availability.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member_availabilities/1
  # PATCH/PUT /member_availabilities/1.json
  def update
    respond_to do |format|
      if @member_availability.update(member_availability_params)
        format.html { redirect_to @member_availability, notice: 'Member availability was successfully updated.' }
        format.json { render :show, status: :ok, location: @member_availability }
      else
        format.html { render :edit }
        format.json { render json: @member_availability.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_availabilities/1
  # DELETE /member_availabilities/1.json
  def destroy
    @member_availability.destroy
    respond_to do |format|
      format.html { redirect_to member_availabilities_url, notice: 'Member availability was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_availability
      @member_availability = MemberAvailability.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_availability_params
      params.require(:member_availability).permit(:member_id, :availability_id)
    end
end
