require 'spec_helper'

describe "adventure_games/new" do
  before(:each) do
    assign(:adventure_game, stub_model(AdventureGame,
      :new => "MyString",
      :create => "MyString",
      :update => "MyString",
      :edit => "MyString",
      :destroy => "MyString",
      :index => "MyString",
      :show => "MyString"
    ).as_new_record)
  end

  it "renders new adventure_game form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", adventure_games_path, "post" do
      assert_select "input#adventure_game_new[name=?]", "adventure_game[new]"
      assert_select "input#adventure_game_create[name=?]", "adventure_game[create]"
      assert_select "input#adventure_game_update[name=?]", "adventure_game[update]"
      assert_select "input#adventure_game_edit[name=?]", "adventure_game[edit]"
      assert_select "input#adventure_game_destroy[name=?]", "adventure_game[destroy]"
      assert_select "input#adventure_game_index[name=?]", "adventure_game[index]"
      assert_select "input#adventure_game_show[name=?]", "adventure_game[show]"
    end
  end
end
