class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :delete]
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :move_to_index, only: [:edit, :destroy]
  def index
    @items = Item.includes(:user).order('created_at DESC')
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to item_path(@item.id)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @item.destroy
    redirect_to root_path
  end

  private

  def item_params
    params.require(:item).permit(:image, :name, :description, :category_id, :shipping_charge_id, :prefecture_id, :condition_id,
                                 :day_id, :price).merge(user_id: current_user.id)
  end

  def move_to_index
    return if current_user.id == @item.user.id
    redirect_to action: :index
  end

  def set_item
    @item = Item.find(params[:id])
  end

end
