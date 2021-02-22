class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
    @user = @item.user
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save

    redirect_to item_path(@item)
  end

  private

  def item_params
    params.require(:item).permit(:category, :price, :brand, :size, :location, :condition)
  end
end
