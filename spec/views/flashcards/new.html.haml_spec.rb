require 'rails_helper'

RSpec.describe "flashcards/new", type: :view do
  before(:each) do
    assign(:flashcard, Flashcard.new(
      :word => "MyString",
      :definition => "MyString"
    ))
  end

  it "renders new flashcard form" do
    render

    assert_select "form[action=?][method=?]", flashcards_path, "post" do

      assert_select "input[name=?]", "flashcard[word]"

      assert_select "input[name=?]", "flashcard[definition]"
    end
  end
end
