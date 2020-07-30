class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  belongs_to :doctor
  belongs_to :patient
end
