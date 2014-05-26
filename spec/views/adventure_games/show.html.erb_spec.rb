require 'spec_helper'

describe "adventure_games/show" do
  before(:each) do
    @adventure_game = assign(:adventure_game, stub_model(AdventureGame,
      :new => "New",
      :create => "Create",
      :update => "Update",
      :edit => "Edit",
      :destroy => "Destroy",
      :index => "Index",
      :show => "Show"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/New/)
    rendered.should match(/Create/)
    rendered.should match(/Update/)
    rendered.should match(/Edit/)
    rendered.should match(/Destroy/)
    rendered.should match(/Index/)
    rendered.should match(/Show/)
  end
end
