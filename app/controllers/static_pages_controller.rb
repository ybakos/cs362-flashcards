class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @flashcard = Flashcard.all.sample
  end
end
