require 'test_helper'

class ParticipantsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Participant.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Participant.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Participant.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to participant_url(assigns(:participant))
  end

  def test_edit
    get :edit, :id => Participant.first
    assert_template 'edit'
  end

  def test_update_invalid
    Participant.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Participant.first
    assert_template 'edit'
  end

  def test_update_valid
    Participant.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Participant.first
    assert_redirected_to participant_url(assigns(:participant))
  end

  def test_destroy
    participant = Participant.first
    delete :destroy, :id => participant
    assert_redirected_to participants_url
    assert !Participant.exists?(participant.id)
  end
end
