    
class SessionsController < ApplicationController 

  def login_form
  end

  def login
    customer = Customer.find_by(username: params[:customer][:username])

    if customer && customer.authenticate(params[:customer][:password])

      session[:customer_id] = customer.id

      redirect_to customer_path(customer)
    else
      flash[:notice] = "Wrong credentials! PLEASE TRY AGAIN!"
      redirect_to "/login_form"
    end
  end

  def logout
    session[:customer_id] = nil

    redirect_to "/restaurants"
  end
end