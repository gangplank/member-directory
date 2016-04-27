require 'test_helper'

class MemberSkillsControllerTest < ActionController::TestCase
  setup do
    @member_skill = member_skills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:member_skills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member_skill" do
    assert_difference('MemberSkill.count') do
      post :create, member_skill: { member_id: @member_skill.member_id, skill_id: @member_skill.skill_id }
    end

    assert_redirected_to member_skill_path(assigns(:member_skill))
  end

  test "should show member_skill" do
    get :show, id: @member_skill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member_skill
    assert_response :success
  end

  test "should update member_skill" do
    patch :update, id: @member_skill, member_skill: { member_id: @member_skill.member_id, skill_id: @member_skill.skill_id }
    assert_redirected_to member_skill_path(assigns(:member_skill))
  end

  test "should destroy member_skill" do
    assert_difference('MemberSkill.count', -1) do
      delete :destroy, id: @member_skill
    end

    assert_redirected_to member_skills_path
  end
end
