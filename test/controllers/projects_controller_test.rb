require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
    # Put in the below lines, because otherwise when you use validates to prevent projects from being created
    # without title or description being included, the validation will fail.
    @update = {
      title:        'Lorem Ipsum',
      description:  'A description',
      headline:     'Hey guys',
      project_type: 'Some type'
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: @update
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    patch :update, id: @project, project: @update
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
