class MypagesController < ApplicationController
  
  def index
  end

  def identification
    render "mypages/_identification"
  end
   
  def mypage_exhibit
    @item = Item.all
  end  
end
