class ItemsController < ApplicationController
 

  def index
    
  end

  def buy
  end

  def show
  end

  def create
    # formのデータを受け取る
    @item = Item.new(item_params)
  end


  def show
    @items = Item.find(id: params[:id])
  end

  def pay
    Payjp.api_key = ENV['PAYJP_ACCESS_KEY']
    Payjp::Charge.create(
      amount: 3500, # 決済する値段
      card: params['payjp-token'],
      currency: 'jpy'
    )
  end


  private

  def item_params
    # ストロングパラメータ
    params.require(:item).
      permit(:name, :image, :category, :brand, :size, :condition, :cost,
      :shipping, :area, :date, :price, :buyer_id, :saler_id)
  end

  def set_item
    #データの取得
    @item = Item.find(params[:id])
  end
end
