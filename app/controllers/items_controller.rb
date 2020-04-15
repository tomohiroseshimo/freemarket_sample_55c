class ItemsController < ApplicationController
  before_action :set_item, only:[:edit, :update]
  before_action :authenticate_user!, only: [:show, :new, :buy, :create, :edit, :update, :destroy, :pay]
# buyとpayには飛べない authenthicate mypage関係は全て飛べない
  def index
    @item = Item.all
  end

  def new
    @item = Item.new
  end

  def buy
    @item = Item.find(params[:id])
  end

  def after
    @item = Item.find(params[:id])
  end  


  
  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to items_path, notice: '出品が完了しました'
    else
      render 'new', notice: '商品を登録できませんでした'
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    #if文で画像を消すのみのパターン
    if remove_images_params[:remove_images].present?
      # 画像を消しかつ追加するパターン
      if params[:item][:images].present?
        @item.update(item_params)
        remove_images_params[:remove_images].each do |i|
          image = @item.images.find(i)
          image.purge
        end  
      else
        @item.update(item_nonimage_params)
        remove_images_params[:remove_images].each do |i|
          image = @item.images.find(i)
          image.purge
        end
      end
    else
      if params[:item][:images].present?
        # 画像を追加するだけのパターン
        @item.update(item_params)
      else
        # 画像を変えないパターン
        @item.update(item_nonimage_params)
      end
    end

    redirect_to root_path
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

  def pay
    @item = Item.find(params[:id])
    Payjp.api_key = Rails.application.credentials.payjp[:PAYJP_ACCESS_KEY]
    charge = Payjp::Charge.create(
      amount: @item.price, # 決済する値段
      card: params['payjp-token'],
      currency: 'jpy'
    )
    @item.update(purchaser_id: current_user.id)
    redirect_to after_path
  end


  private

  def item_params
    params.require(:item).permit(:name, :description, :category, :condition, :cost, :area, :date, :price).merge(user_id: current_user.id, images: params[:item][:images][:images])
  end

  def remove_images_params
    params.require(:item).permit(remove_images: [])
  end

  def item_nonimage_params
    params.require(:item).permit(:name, :description, :category, :condition, :cost, :area, :date, :price).merge(user_id: current_user.id)
  end

    
  def set_item
    #データの取得
    @item = Item.find(params[:id])
  end

end
