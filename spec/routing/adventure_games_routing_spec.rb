require "spec_helper"

describe AdventureGamesController do
  describe "routing" do

    it "routes to #index" do
      get("/adventure_games").should route_to("adventure_games#index")
    end

    it "routes to #new" do
      get("/adventure_games/new").should route_to("adventure_games#new")
    end

    it "routes to #show" do
      get("/adventure_games/1").should route_to("adventure_games#show", :id => "1")
    end

    it "routes to #edit" do
      get("/adventure_games/1/edit").should route_to("adventure_games#edit", :id => "1")
    end

    it "routes to #create" do
      post("/adventure_games").should route_to("adventure_games#create")
    end

    it "routes to #update" do
      put("/adventure_games/1").should route_to("adventure_games#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/adventure_games/1").should route_to("adventure_games#destroy", :id => "1")
    end

  end
end
