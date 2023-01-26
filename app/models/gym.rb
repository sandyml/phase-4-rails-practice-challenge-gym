class Gym < ApplicationRecord
 has_many :memberships, dependent: :destroy
 has_many :clients, through: :memberships
end

# A gym has many clients and has many memberships