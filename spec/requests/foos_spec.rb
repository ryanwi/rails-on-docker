require 'rails_helper'

RSpec.describe "Foos", type: :request do
  describe "GET /foos" do
    it "works! (now write some real specs)" do
      get foos_path
      expect(response).to have_http_status(200)
    end
  end
end
