require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

end
