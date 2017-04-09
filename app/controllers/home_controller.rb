class HomeController < ApplicationController
  def index
  	@tools = Tool.all
  end

  def aboutus
  end
end
