class StoreController < ApplicationController  
  def index
  #@products = App.find(params[:id])
    if params[:category_id]
      @products = App.where(:category_id => params[:category_id])
    else
      @products = App.all
    end
    @search = App.search(params[:q])
    @products = @search.result
    @search.build_condition if @search.conditions.empty?
    @search.build_sort if @search.sorts.empty?
    #@products = App.order(:price)     
  end

  def free

    @app=App.find(params[:category_id])
    @opp=App.where(price:'0') 
    @free=@app && @opp
  end

  def paid
    @app=App.find(params[:category_id])
    @pai= App.where.not(price: '0') 
    @paid=@app && @paid

  end

  def show
     @product = Category.find(params[:id])
  end

  def blind
      @search = App.search(params[:q])
      @products = @search.result.joins(:reviews).select("*, avg(reviews.rating) as average").group("reviews.id").where(:category_id => 2)
      @search.build_sort if @search.sorts.empty?
      @free = App.search(params[:q], :preis=> '0')
  end

  def sight
      @search = App.search(params[:q])
      @products = @search.result.where(:category_id => 2) 
  end

  def motorical 
      @search = App.search(params[:q])
      @products = @search.result.where(:category_id => 3)  
  end 

  def learning
      @@search = App.search(params[:q])
      @products = @search.result.where(:category_id => 4)  
  end

  def hearing
      @search = App.search(params[:q])
      @products = @search.result.where(:category_id => 5)  
  end

   def WheelChair
      @search = App.search(params[:q])
      @products = @search.result.where(:category_id => 6)  
  end
end
