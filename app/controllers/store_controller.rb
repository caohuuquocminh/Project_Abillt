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
  	 @product = App.find(params[:id])
  end

  def blind
      @search = App.search(params[:q]) if App.where(:category_id => 1)
      @products = @search.result      
  end

  def sight
      @search = App.search(params[:q]) if App.where(:category_id => 1)
      @products = @search.result  
  end

  def motorical 
  	  @search = App.search(params[:q]) if App.where(:category_id => 1)
      @products = @search.result  
  end 

  def learning
      @@search = App.search(params[:q]) if App.where(:category_id => 1)
      @products = @search.result  
  end

  def hearing
      @search = App.search(params[:q]) if App.where(:category_id => 1)
      @products = @search.result  
  end

   def WheelChair
      @search = App.search(params[:q]) if App.where(:category_id => 1)
      @products = @search.result  
  end

end
