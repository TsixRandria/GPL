class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  def after_sign_up_path_for(client)
  	# 
  	"www.google.com"
  end 
end
