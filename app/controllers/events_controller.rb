class EventsController < ApplicationController
  def index
  end

  def new
    @event =Event.new
    2.times { @event.stalls.build }
  end

  def create
    event = Event.create(event_params)
    
    if event.valid?
      flash[:notice] = "Employee is successfully added."
      redirect_to event_path(event)
    else
      flash[:errors] = event.errors.full_messages
      redirect_to event_path(event)
    end
  end

  def edit
  end

  def show
  end

  def event_params
    params.require(:event).permit(:event_name,:venue, :organizer_name, :start_date, :end_date, :mobile_no,:city,:total_stall,:start_time,:end_time, :email, :zip_code,:event_poster, :floor_plan, :visit_count, :description_of_event,:terms_condition,stalls_attributes: [:stall_type, :stall_size, :stall_price])
  end
end
