class ItemsLoginController < ApplicationController
  def index
    @item = Item.all
  end  
end

