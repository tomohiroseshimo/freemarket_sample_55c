class ItemsController < ApplicationController

  
  def index
  end

  def new
    @item = Item.new
    # @parents = Category.all.order("id ASC").limit(10)　　　←全く同じコードをcategoriesコントローラーへ記載
  end
  
  def create
    # formのデータを受け取る
    @item = Item.new(item_params)
    if @item.save
      render 'index'
    else
      render 'new'
    end
  end

  private

  def item_params
    # ストロングパラメータ
    params.require(:item).permit(:name, :description, :image, :category, :condition, :cost, :area, :date, :price)
  end

  def set_item
    #データの取得
    @item = Item.find(params[:id])
  end
end
