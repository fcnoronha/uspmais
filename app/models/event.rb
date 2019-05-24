class Event < ApplicationRecord
    validates :nome, presence: true, length: { in: 3..100 }
    validates :local, presence: true
    validates :date, presence: true
    validates :time, presence: true

    has_many :hosts, dependent: :destroy
    has_many :users, through: :hosts

end
