class ItemsController < ApplicationController
  def index
  end

  # def create
  #   # formのデータを受け取る
  #   @item = Item.new(item_params)
  # end

  # private

  # def item_params
  #   # ストロングパラメータ
  #   params.require(:item).
  #     permit(:name, :image, :category, :brand, :size, :condition, :cost,
  #     :shipping, :area, :date, :price, :buyer_id, :saler_id)
  # end

  # def set_item
  #   #データの取得
  #   @item = Item.find(params[:id])
  # end
end
