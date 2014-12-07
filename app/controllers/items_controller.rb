class ItemsController < ApplicationController
  def index
    if params['show_inactive']
      @items = Item.all
    else
      @items = Item.where(active: true)
    end
  end

  def show
    @item = Item.find(params[:id].to_i)
  end

  def update
    # puts params
    item = Item.find(params[:id].to_i)
    item.update(active: true)
    redirect_to items_path
  end
end
