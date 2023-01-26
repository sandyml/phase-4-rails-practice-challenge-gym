class Client < ApplicationRecord
 has_many :memberships
 has_many :gyms, through: :memberships
end

# A client has many gyms and has many memberships