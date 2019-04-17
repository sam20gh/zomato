class CustomersController < ApplicationController
    def index
        @customers = Customer.all 
    end
  
    def show
        @customer = Customer.find(params[:id])
    end
  
    def new
        @customer = Customer.new
    end

    def customer_params
        params.require(:customer).permit(:Name, :Dob, :User_name, :paaaword,:Email)
    end
    
  
    def create
        Customer.create(customer_params)
        @customer = Customer.new(customer_params[:id])
        redirect_to @customer

    end

  
    def edit
        @customer = Customer.find(params[:id])

    end 
  
    def update 
        @customer = Customer.find(params[:id])
    end 
    
    def delete
        @customer = Customer.find(params[:id])
        @customer.destroy
        redirect_to customers_path
    end 


end