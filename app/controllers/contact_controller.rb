class ContactController < ApplicationController
  def contact
  # 	@message = 


  # 	respond_to do |format|
	 #    if verify_recaptcha(model: @message) && @message.save
	 #      format.html { redirect_to contact, notice: 'success' }
	 #      format.json { render :show, status: :created, location: @message }
	 #    else
	 #      format.html { render :new }
	 #      format.json { render json: @message.errors, status: :unprocessable_entity }
	 #    end
  # 	end
  end
end





#integration recaptcha
# def create
#  if !verify_recaptcha
#     flash.delete :recaptcha_error
#     build_resource(sign_up_params)
#     resource.valid?
#     resource.errors.add(:base, "There was an error with the recaptcha code below. Please re-enter the code.")
#     clean_up_passwords(resource)
#     respond_with_navigational(resource) { render_with_scope :new }
#   else
#     flash.delete :recaptcha_error
#     super
#   end
# end


# view avec devise
# <%= form_for(resource, as: resource_name, url: registration_path(resource_name)) do |f| %>
#   <%= devise_error_messages! %>

#   <div class="field">
#     <%= f.label :email %><br />
#     <%= f.email_field :email, autofocus: true %>
#   </div>

#   <div class="field">
#     <%= f.label :password %>
#     <% if @minimum_password_length %>
#     <em>(<%= @minimum_password_length %> characters minimum)</em>
#     <% end %><br />
#     <%= f.password_field :password, autocomplete: "off" %>
#   </div>

#   <div class="field">
#     <%= f.label :password_confirmation %><br />
#     <%= f.password_field :password_confirmation, autocomplete: "off" %>
#   </div>

#   <div class="field">
#     <%= recaptcha_tags %>
#   </div>

#   <div class="actions">
#     <%= f.submit "Sign up" %>
#   </div>
# <% end %>

# <%= render "devise/shared/links" %>


# RECAPTCHA_PUBLIC_KEY = '<YOUR PUBLIC KEY>'
# RECAPTCHA_PRIVATE_KEY = '<YOUR PRIVATE KEY>'



#view recaptcha

# <%= form_for(@pet) do |f| %>
#   <% if @pet.errors.any? %>
#     <div id="error_explanation">
#       <h2><%= pluralize(@pet.errors.count, "error") %> prohibited this pet from being saved:</h2>

#       <ul>
#       <% @pet.errors.full_messages.each do |message| %>
#         <li><%= message %></li>
#       <% end %>
#       </ul>
#     </div>
#   <% end %>

#   <div class="field">
#     <%= f.label :name %><br>
#     <%= f.text_field :name %>
#   </div>
#   <div class="field">
#     <%= f.label :pets_type %><br>
#     <%= f.text_field :pets_type %>
#   </div>
#   <div>
#     <%= recaptcha_tags %> <!-- THIS -->
#   </div>
#   <div class="actions">
#     <%= f.submit %>
#   </div>
# <% end %>