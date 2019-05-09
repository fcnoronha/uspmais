class OrgController < ApplicationController

  def create

      # Parameter that are obligatory to be passed and the ones that are optional
      @org = Org.new(org_params)

      if @org.save
        redirect_to @org
        return
      end

      @errors = @org.errors.full_messages
      render :new # views/new.html.haml
  end

  # Showed when user is created
  def show
    @org = Org.find(params[:id])
  end  

  private

    def org_params
        params
        .require(:org) # filters
        .permit(:nome,
                :email,
                :instituto,
                :curso,
                :info,
                :foto,
                :link_site,
                :link_fb,
                :link_tt)
    end
end
