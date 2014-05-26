require 'spec_helper'

describe "adventure_games/index" do
  before(:each) do
    assign(:adventure_games, [
      stub_model(AdventureGame,
        :new => "New",
        :create => "Create",
        :update => "Update",
        :edit => "Edit",
        :destroy => "Destroy",
        :index => "Index",
        :show => "Show"
      ),
      stub_model(AdventureGame,
        :new => "New",
        :create => "Create",
        :update => "Update",
        :edit => "Edit",
        :destroy => "Destroy",
        :index => "Index",
        :show => "Show"
      )
    ])
  end

  it "renders a list of adventure_games" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "New".to_s, :count => 2
    assert_select "tr>td", :text => "Create".to_s, :count => 2
    assert_select "tr>td", :text => "Update".to_s, :count => 2
    assert_select "tr>td", :text => "Edit".to_s, :count => 2
    assert_select "tr>td", :text => "Destroy".to_s, :count => 2
    assert_select "tr>td", :text => "Index".to_s, :count => 2
    assert_select "tr>td", :text => "Show".to_s, :count => 2
  end
end
