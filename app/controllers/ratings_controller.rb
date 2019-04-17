class RatingsController < ApplicationController
def destroy
    @rating = Rating.find(params[:id])
    @restaurant = @rating.restaurant

    if @current_customer.id == @rating.customer.id
      @rating.destroy

    else
      flash[:notice] = "Whoa there! That ain't yours"
    end

    redirect_to restaurant_path(@restaurant)
end



  

end
