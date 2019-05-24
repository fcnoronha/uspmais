class EventController < ApplicationController

  def index
    @events = Event.all
  end

  def my
    unless logged_in?
      flash[:danger] = 'Você precisa estar logado para consultar seus eventos!'
      redirect_to "/session/new"
      return
    end
    @my_events = Event.joins(:users).where(users: {id: current_user.id})
  end

  def new
    unless logged_in?
      flash[:danger] = 'Você precisa estar logado para criar um evento!'
      redirect_to "/session/new"
      return
    end
  end

  def create

    unless logged_in?
      flash[:danger] = 'Você precisa estar logado para criar um evento!'
      redirect_to "/session/new"
      return
    end

    # Parameter that are obligatory to be passed and the ones that are optional
    flash[:success] = "Evento criado com sucesso!"
    @event = Event.new(event_params)

    unless @event.save
      @errors = @event.errors.full_messages
      render :new # views/new.html.haml
      return
    end

    host = Host.new(event: @event, user: current_user)
    host.save!

    redirect_to @event
  end

  def edit
    @event = Event.find(params[:id])
  end

  # Update the database
  def update

    @event = Event.find(params[:id])

    if @event.update_attributes(event_params)
      # Handle a successful update.
      redirect_to @event

    else
      render 'edit'
    end
  end


  # Showed when user is created
  def show
    if logged_in?
      @my_events = Event.joins(:users).where(users: {id: current_user.id})
    end

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
                :time,
                user_ids: [])
    end

end
