class ClientsessionController < ApplicationController
before_action :configure_devise_parameters, if: :devise_controller?

  # def index
  	

  # end

 


  def update
    respond_to do |format|
      if @assurance.update(assurance_params)
        format.html { redirect_to @assurance, notice: 'Assurance was successfully updated.' }
        format.json { render :show, status: :ok, location: @assurance }
      else
        format.html { render :edit }
        format.json { render json: @assurance.errors, status: :unprocessable_entity }
      end
    end
  end
end
