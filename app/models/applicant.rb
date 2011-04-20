class Applicant < ActiveRecord::Base
  belongs_to :interview
  has_many :results
end
