class Org < ApplicationRecord

    validates :nome, presence: true, length: { in: 3..100 }
    validates :email, presence: true, length: { maximum: 200 }, uniqueness: true
    validates :instituto, presence: true
    validates :curso, presence: true
    validates :info, presence: true, length: { maximum: 1000 }

    has_many :follows
    has_many :users, :through => :follows

    has_many :hosts
    has_many :events, :through => :hosts

end
