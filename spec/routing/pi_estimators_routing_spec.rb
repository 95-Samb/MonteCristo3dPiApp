require "rails_helper"

RSpec.describe PiEstimatorsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/pi_estimators").to route_to("pi_estimators#index")
    end

    it "routes to #new" do
      expect(:get => "/pi_estimators/new").to route_to("pi_estimators#new")
    end

    it "routes to #show" do
      expect(:get => "/pi_estimators/1").to route_to("pi_estimators#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pi_estimators/1/edit").to route_to("pi_estimators#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/pi_estimators").to route_to("pi_estimators#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/pi_estimators/1").to route_to("pi_estimators#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/pi_estimators/1").to route_to("pi_estimators#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pi_estimators/1").to route_to("pi_estimators#destroy", :id => "1")
    end
  end
end
