class AboutController < ApplicationController
  def index
  	@Category = Category.all
  end
end
