class MypagesController < ApplicationController
  before_action :authenticate_user!
  def index
    @user = User.find_by(id: params[:id])
  end

  def identification
    @user = User.find_by(id: params[:id])
  end

  def mypage_exhibit
    @item = Item.all
  end

  def commodity
    @item = Item.find(params[:id])
  end

  def profile
    @user = User.find_by(id: params[:id])
  end
end
