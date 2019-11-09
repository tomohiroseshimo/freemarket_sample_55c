class ItemsController < ApplicationController
  def index
  end

  def detail
    render "items/_details"
  end
end
