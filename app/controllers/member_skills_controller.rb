class MemberSkillsController < ApplicationController
  before_action :set_member_skill, only: [:show, :edit, :update, :destroy]

  # GET /member_skills
  # GET /member_skills.json
  def index
    @member_skills = MemberSkill.all
  end

  # GET /member_skills/1
  # GET /member_skills/1.json
  def show
  end

  # GET /member_skills/new
  def new
    @member_skill = MemberSkill.new
  end

  # GET /member_skills/1/edit
  def edit
  end

  # POST /member_skills
  # POST /member_skills.json
  def create
    @member_skill = MemberSkill.new(member_skill_params)

    respond_to do |format|
      if @member_skill.save
        format.html { redirect_to @member_skill, notice: 'Member skill was successfully created.' }
        format.json { render :show, status: :created, location: @member_skill }
      else
        format.html { render :new }
        format.json { render json: @member_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member_skills/1
  # PATCH/PUT /member_skills/1.json
  def update
    respond_to do |format|
      if @member_skill.update(member_skill_params)
        format.html { redirect_to @member_skill, notice: 'Member skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @member_skill }
      else
        format.html { render :edit }
        format.json { render json: @member_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_skills/1
  # DELETE /member_skills/1.json
  def destroy
    @member_skill.destroy
    respond_to do |format|
      format.html { redirect_to member_skills_url, notice: 'Member skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_skill
      @member_skill = MemberSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_skill_params
      params.require(:member_skill).permit(:skill_id, :member_id)
    end
end
