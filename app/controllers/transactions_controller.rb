class TransactionsController < ApplicationController
   before_filter :authenticate_user!


def new
  @course = Course.find_by!(
    id: params[:id]
  )
end


def create
@course = Course.find_by!(
    id: params[:id]
  )

  token = params[:stripeToken]

  customer = Stripe::Customer.create(
    :email => current_user.email
  )

  transaction = Stripe::Charge.create(
    :amount      => @course.price,
    :currency    => 'eur',
    :card => token,
  )
  

  current_user.add_role :rubyonrails
  current_user.stripeid = customer.id
  current_user.save
  
  if @current_user.save
    redirect_to root_path
  else
    render 'new'
  end



rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to course_path
end
end


