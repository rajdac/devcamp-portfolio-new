class PortfoliosController < ApplicationController
	def index
		@portfolio_items = Portfolio.all
	end	

	def new
		@portfolio_item = Portfolio.new
	end	

	# POST /portfolios or /portfolios.json
  def create
    @portfolio = Portfolio.new( params.require(:portfolio).permit(:title,:subtitle,:body))

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
  	@portfolio_item = Portfolio.find(params[:id])
    respond_to do |format|
      if @portfolio_item.update(params.require(:portfolio).permit(:title,:subtitle,:body))
        format.html { redirect_to portfolios_path, notice: "Portfolio was successfully updated." }
        format.json { render :show, status: :ok, location: portfolios_path }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
      end
    end
  end	

  def edit

  	@portfolio_item = Portfolio.find(params[:id])

  end

  def show

  	@portfolio_item = Portfolio.find(params[:id])

  end	

end
