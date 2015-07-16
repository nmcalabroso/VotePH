class Candidate < ActiveRecord::Base
  belongs_to :position
  has_many :votes
  accepts_nested_attributes_for :votes
  validates :last_name, presence: true
  validates :first_name, presence: true
end
