class Candidate < ActiveRecord::Base
  belongs_to :position
  has_many :votes, dependent: :destroy
  accepts_nested_attributes_for :votes
  mount_uploader :avatar, AvatarUploader
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :slogan, presence: true, uniqueness: true

  def male_votes
    votes.select { |vote| vote.user.gender == 'male' }
  end

  def female_votes
    votes.select { |vote| vote.user.gender == 'female' }
  end
end
