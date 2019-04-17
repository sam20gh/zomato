
class ApplicationController < ActionController::Base
  before_action :current_customer

  def current_customer
    if session[:customer_id]
      @current_customer = Customer.find(session[:customer_id])
    end
  end
end
