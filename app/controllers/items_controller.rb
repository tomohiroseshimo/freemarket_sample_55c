class ItemsController < ApplicationController
 

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
    # このまま導入するとunknown attribute 'item_id' for Image.というエラーが発生してしまう
    # @parents = Category.all.order("id ASC").limit(10) ←全く同じコードをcategoriesコントローラーへ記載
  end

  def buy
  end

  def show
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

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    render 'index'
  end
  
  def destroy
    @item = Item.find(params[:id])
    @item.destroy
  end


  def show
    @items = Item.find(params[:id])
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
    # ストロングパラメータ 自分の記述{image: []} メンターの記述 {:images_attributes["0"] => [:image]}
    params.require(:item).permit(:name, :description, :category, :condition, :cost, :area, :date, :price).merge(user_id: current_user.id, images: params[:item][:images][:images])
  end

  def set_item
    #データの取得
    @item = Item.find(params[:id])
  end

  # def item_find
  #   Item.find(params[:id])
  # end

end
