class RelationController < ApplicationController
  def create
    user=User.find_by(email: params[:user][:address])
    level=params[:level][:profile_id]
    if user == nil
      respond_to do |format|
        format.html { redirect_to :back, notice: 'correo no existe' }
      end
    else
      @relation = Relation.create(enterprise_id: current_enterprise.id, user_id: user.id, level_id: level)
      respond_to do |format|
        if @relation.save
          format.html { redirect_to root_path, notice: 'Envio exitoso.' }
          format.json { render action: 'show', status: :created, location: root_path }
        else
          #format.html { render action: 'new' }
          #|format.json { render json: @relation.errors, status: :unprocessable_entity }
        end
      end
    end





  end
  private
  def post_params
    params.require(:relation).permit(:level, :user_id)
  end
end
