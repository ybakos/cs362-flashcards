require 'rails_helper'

RSpec.describe "flashcards/show", type: :view do
  before(:each) do
    @flashcard = assign(:flashcard, Flashcard.create!(
      :word => "Word",
      :definition => "Definition"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Word/)
    expect(rendered).to match(/Definition/)
  end
end
