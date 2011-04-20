class Interview < ActiveRecord::Base
  belongs_to :mandate
  has_many :applicants
  has_many :results
  accepts_nested_attributes_for :applicants
end
