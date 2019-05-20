require 'rails_helper'

RSpec.describe "flashcards/edit", type: :view do
  before(:each) do
    @flashcard = assign(:flashcard, Flashcard.create!(
      :word => "MyString",
      :definition => "MyString"
    ))
  end

  it "renders the edit flashcard form" do
    render

    assert_select "form[action=?][method=?]", flashcard_path(@flashcard), "post" do

      assert_select "input[name=?]", "flashcard[word]"

      assert_select "input[name=?]", "flashcard[definition]"
    end
  end
end
