class Subscribed < ApplicationRecord
  belongs_to :user
  belongs_to :event
end
