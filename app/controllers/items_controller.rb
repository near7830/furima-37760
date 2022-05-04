class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show] 
  before_action :set_item, except: [:index, :new, :create]

  def index
    @items = Item.all.order(created_at: :desc)
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @comment = Comment.new
    @comments = @item.comments.includes(:user)
  end

  def edit
    if @item.user_id == current_user.id && @item.order.nil?
    else
      redirect_to root_path
    end
  end

  def update
    @item.update(item_params)
    if @item.valid?
      redirect_to item_path(item_params)
    else
      render 'edit'
    end
  end

  def destroy
    if @item.user_id == current_user.id
      @item.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def item_params
    params.require(:item).permit(:item, :image, :name, :explain, :category_id, :sales_status_id, :prefecture_id, :shipping_fee_status_id,
                                 :scheduled_delivery_id, :price, :user_id, :image).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
