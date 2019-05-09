class OrgController < ApplicationController

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
