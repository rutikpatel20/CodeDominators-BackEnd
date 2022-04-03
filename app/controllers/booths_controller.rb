class BoothsController < ApplicationController
  def new
    @event = Event.find(params[:event_id])
    @booth = Booth.new
  end

  def create
    booth = Booth.create(booth_params)
    if booth.valid?
      binding.pry
      flash[:notice] = "Employee is successfully added."
      customer = Stripe::Customer.create({ "email": current_user.email })
      binding.pry
      c = customer.id
      d = booth.id
      # @booking = Booking.create(email: current_user.email, stripe_id: c, event_id: params[:booth][:event_id], currency: "INR", stall_id: params[:booth][:stall_id])
      @booking = Booking.create!(email: current_user.email, stripe_id: c, event_id: params[:booth][:event_id], currency: "INR", stall_id: params[:booth][:stall_id].first, booth_id:booth.id)

      @stall = Stall.find(params[:booth][:stall_id].first).update(disable: true)
      redirect_to root_path
    else
      flash[:errors] = booth.errors.full_messages
      redirect_to new_booth_path(booth)
    end
  end

  def stripeform
  end

  def booth_params
    params.require(:booth).permit(:first_name, :last_name, :email, :contact, { stall_id: [] })
  end
end
