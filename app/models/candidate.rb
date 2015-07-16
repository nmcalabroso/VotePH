class Candidate < ActiveRecord::Base
  belongs_to :position
  validates :last_name, presence: true
  validates :first_name, presence: true
end
