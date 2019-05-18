class EventController < ApplicationController

  def index
       @events = Event.all
  end

  def create

      # Parameter that are obligatory to be passed and the ones that are optional
      @event = Event.new(event_params)

      if @event.save
        redirect_to @event
        return
      end

      @errors = @event.errors.full_messages
      render :new # views/new.html.haml
  end

  # Showed when user is created
  def show
    @event = Event.find(params[:id])
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to event_index_path
  end

  private

    def event_params
        params
        .require(:event) # filters
        .permit(:nome,
                :info,
                :foto,
                :local,
                :date,
                :time)
    end

end
