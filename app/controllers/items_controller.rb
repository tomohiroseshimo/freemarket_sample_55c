class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
    
    # active_storageのためのコメントアウト
    # @item.images.build
    
    # このまま導入するとunknown attribute 'item_id' for Image.というエラーが発生してしまう
    # @parents = Category.all.order("id ASC").limit(10) ←全く同じコードをcategoriesコントローラーへ記載
  end

  def create
    # formのデータを受け取る
    @item = Item.new(item_params)
    # binding.pry
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
    # ストロングパラメータ 大場さんの記述 images_attributes: [:id, :image, :_destroy] 自分の記述{image: []} メンターの記述 {:images_attributes["0"] => [:image]}
    params.require(:item).permit(:name, :description, :category, :condition, :cost, :area, :date, :price).merge(user_id: current_user.id, images: params[:item][:images][:images])
  end

  # イーチ文で回す
  # def image_params
  #   params.require(:item).require(:images_attributes).require(["0"])[0][:image]
  #   params[:item][:images_attributes]["0"][:image]
  # end

  def set_item
    #データの取得
    @item = Item.find(params[:id])
  end
end
