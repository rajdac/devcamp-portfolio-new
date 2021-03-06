class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:edit,:update,:show,:destroy]
  layout 'portfolio'
	def index
		@portfolio_items = Portfolio.all
	end	

  def angular
    @portfolio_items = Portfolio.angular
  end  

	def new
		@portfolio_item = Portfolio.new
    3.times {@portfolio_item.technologies.build}
	end	

	# POST /portfolios or /portfolios.json
  def create
    @portfolio = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to portfolios_path, notice: "portfolio was successfully created." }
        format.json { render :show, status: :created, location: @portfolio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  	
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: "Portfolio was successfully updated." }
        format.json { render :show, status: :ok, location: portfolios_path }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
      end
    end
  end	

  def edit   
  	
    # 3.times {@portfolio_item.technologies.build}
  end

  def show


  end	

  def destroy  
    # Destroy
    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: "Portfolio item was successfully destroyed." }
      format.json { head :no_content }
    end
  end 

  private
  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body, technologies_attributes: [:name])
  end 	

  def set_portfolio_item
    # perform lookup
    @portfolio_item = Portfolio.find(params[:id])
  end  
end
