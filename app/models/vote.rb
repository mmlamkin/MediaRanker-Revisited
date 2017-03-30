class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :piece, counter_cache: :vote_count

  validates :user, uniqueness: { scope: :piece, message: "has already voted for this piece" }
end