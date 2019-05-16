class User < ApplicationRecord

    # Putting email in lowercasse
    before_save { self.email = email.downcase }

    validates :nome, presence: true, length: { in: 3..100 }
    validates :email, presence: true, length: { maximum: 200 }, uniqueness: true
    validates :instituto, presence: true
    validates :curso, presence: true
    validates :info, presence: true, length: { maximum: 1000 }
    # validates :link_site
    # validates :link_fb
    # validates :link_tt
    has_many :follows
    has_many :orgs, through: :follows


    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }

    # Returns the hash digest of the given string.
    def User.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                BCrypt::Engine.cost
                BCrypt::Password.create(string, cost: cost)
  end

end
