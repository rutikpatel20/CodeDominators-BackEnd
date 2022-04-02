class BoothsController < ApplicationController
  def new
    @event = Event.find(params[:id])
    @booth = Booth.new
  end

  def create
    booth = Booth.create(booth_params)
    if booth.valid?
      flash[:notice] = "Employee is successfully added."
      redirect_to root_path
    else
      flash[:errors] = booth.errors.full_messages
      redirect_to new_booth_path(booth)
    end
  end

  def booth_params
    params.require(:booth).permit(:first_name, :last_name, :email, :contact, {stall_id:[]})
  end
end
