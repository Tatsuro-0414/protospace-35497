class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
 
end
before_action :authenticate_user!
