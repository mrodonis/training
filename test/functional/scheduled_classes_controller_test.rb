require 'test_helper'

class ScheduledClassesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scheduled_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scheduled_class" do
    assert_difference('ScheduledClass.count') do
      post :create, :scheduled_class => { }
    end

    assert_redirected_to scheduled_class_path(assigns(:scheduled_class))
  end

  test "should show scheduled_class" do
    get :show, :id => scheduled_classes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => scheduled_classes(:one).to_param
    assert_response :success
  end

  test "should update scheduled_class" do
    put :update, :id => scheduled_classes(:one).to_param, :scheduled_class => { }
    assert_redirected_to scheduled_class_path(assigns(:scheduled_class))
  end

  test "should destroy scheduled_class" do
    assert_difference('ScheduledClass.count', -1) do
      delete :destroy, :id => scheduled_classes(:one).to_param
    end

    assert_redirected_to scheduled_classes_path
  end
end
