# frozen_string_literal: true

# ApplicationRecord is a class that inherits from ActiveRecord::Base and is used as a parent class for
# all models in the application.
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
