class User < ActiveRecord::Base
  has_many :votes, dependent: :destroy
  scope :voters, -> { where role: :user }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def did_vote?(candidate)
    similar_votes = votes.select { |vote| vote.candidate == candidate }
    similar_votes.size > 0
  end
end
