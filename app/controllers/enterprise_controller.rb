class EnterpriseController < ApplicationController

  def show
    @enterprise = Enterprise.friendly.find(params[:id])
  end

end
