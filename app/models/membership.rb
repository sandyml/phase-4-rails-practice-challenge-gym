class Membership < ApplicationRecord
  belongs_to :gym
  belongs_to :client

  validates :client, uniqueness: { scope: :gym }
end

# A membership belongs to a gym and belongs to a client