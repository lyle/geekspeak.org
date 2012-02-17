require 'test_helper'

class EpisodesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Episode.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Episode.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Episode.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to episode_url(assigns(:episode))
  end

  def test_edit
    get :edit, :id => Episode.first
    assert_template 'edit'
  end

  def test_update_invalid
    Episode.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Episode.first
    assert_template 'edit'
  end

  def test_update_valid
    Episode.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Episode.first
    assert_redirected_to episode_url(assigns(:episode))
  end

  def test_destroy
    episode = Episode.first
    delete :destroy, :id => episode
    assert_redirected_to episodes_url
    assert !Episode.exists?(episode.id)
  end
end
