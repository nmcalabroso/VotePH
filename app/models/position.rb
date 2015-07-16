class Position < ActiveRecord::Base
  has_many :candidates, dependent: :destroy
  accepts_nested_attributes_for :candidates
  validates :name, presence: true, uniqueness: true
end
