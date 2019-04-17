class CustomersController < ApplicationController
  def index
    @customers= Customer.all
  end
  def create
    @customer = Customer.create(customer_params)
    redirect_to customer_path(@customer)
  end

  def new
    @customer = Customer.new
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def profile
    if !@current_customer
      flash[:notice] = "Please sign in to continue!"
      redirect_to "/login_form"
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:username, :password, :age, :bio, :name)
  end
end
