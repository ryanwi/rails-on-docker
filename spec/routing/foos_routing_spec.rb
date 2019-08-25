require "rails_helper"

RSpec.describe FoosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/foos").to route_to("foos#index")
    end

    it "routes to #new" do
      expect(:get => "/foos/new").to route_to("foos#new")
    end

    it "routes to #show" do
      expect(:get => "/foos/1").to route_to("foos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/foos/1/edit").to route_to("foos#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/foos").to route_to("foos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/foos/1").to route_to("foos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/foos/1").to route_to("foos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/foos/1").to route_to("foos#destroy", :id => "1")
    end
  end
end
