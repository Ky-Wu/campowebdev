class StaticPagesController < ApplicationController
  def home
    @display_text = DISPLAY_TEXTS.sample 
  end

  def contact
  end

  def about
  end
end
