class ItemsController < ApplicationController
  before_action :set_item, only:[:edit, :update]
  require "payjp"

  def index
    @item = Item.all
  end

  def new
    @item = Item.new
    # このまま導入するとunknown attribute 'item_id' for Image.というエラーが発生してしまう
    # @parents = Category.all.order("id ASC").limit(10) ←全く同じコードをcategoriesコントローラーへ記載

  end

  def buy
    @item = Item.find(params[:id])
  end

  def after
    @item = Item.find(params[:id])
  end  


  
  def create
    # formのデータを受け取る
    @item = Item.new(item_params)
    if @item.save
      redirect_to items_path, notice: '出品が完了しました'
    else
      render 'new', notice: '商品を登録できませんでした'
    end
  end

  def edit
  end

  def update 
    @item.update(item_params)
    remove_images_params[:remove_images].each do |i|
      image = @item.images.find(i)
      image.purge
    end
    render 'index'
  end
  
  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
    end
  


  def show
    @item = Item.find(params[:id])
    @item_all = Item.limit(9).order('id DESC')
  end

  def ttt
    @item = Item.all
    
  end 

  def pay
    @item = Item.find(params[:id])
    Payjp.api_key = ENV['PAYJP_ACCESS_KEY']
    charge = Payjp::Charge.create(
      amount: @item.price, # 決済する値段
      card: params['payjp-token'],
      currency: 'jpy'
    )
    redirect_to after_path
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

  def remove_images_params
    params.require(:item).permit(remove_images: [])
  end

end
