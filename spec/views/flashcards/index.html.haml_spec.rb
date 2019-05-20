require 'rails_helper'

RSpec.describe "flashcards/index", type: :view do
  before(:each) do
    assign(:flashcards, [
      Flashcard.create!(
        :word => "Word",
        :definition => "Definition"
      ),
      Flashcard.create!(
        :word => "Word",
        :definition => "Definition"
      )
    ])
  end

  it "renders a list of flashcards" do
    render
    assert_select "tr>td", :text => "Word".to_s, :count => 2
    assert_select "tr>td", :text => "Definition".to_s, :count => 2
  end
end
