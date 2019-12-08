class ItemsController < ApplicationController
  def index
    @item = Item.find(3)
  end

  def new
    @item = Item.new
    # @item.images.build
    
    # このまま導入するとunknown attribute 'item_id' for Image.というエラーが発生してしまう
    # @parents = Category.all.order("id ASC").limit(10) ←全く同じコードをcategoriesコントローラーへ記載
  end

  def create
    # formのデータを受け取る
    @item = Item.new(item_params)
    if @item.save
      render 'index', notice: '出品が完了しました'
    else
      render 'new', notice: '商品を登録できませんでした'
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
  end

  private

  def item_params
    # ストロングパラメータ
    params.require(:item).permit(:name, :description, :category, :condition, :cost, :area, :date, :price, images_attributes: [:id, :image, :_destroy]).merge(user_id: current_user.id)
  end

  def set_item
    #データの取得
    @item = Item.find(params[:id])
  end
end
