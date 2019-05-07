class User < ApplicationRecord
    validates :nome, presence: true, length: { in: 3..100 }
    validates :email, presence: true, length: { maximum: 200 }, uniqueness: true
    validates :instituto, presence: true
    validates :curso, presence: true
    validates :info, presence: true, length: { maximum: 1000 }
    # validates :link_site
    # validates :link_fb
    # validates :link_tt
end
