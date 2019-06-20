class User < ApplicationRecord

    # Putting email in lowercasse
    before_save { self.email = email.downcase }
    before_create :confimation_token

    validates :nome, presence: true, length: { in: 3..100 }
    validates :email, presence: true, length: { maximum: 200 }, uniqueness: true
    validates :instituto, presence: true
    validates :curso, presence: true
    validates :info, presence: true, length: { maximum: 1000 }
    # validates :link_site
    # validates :link_fb
    # validates :link_tt

    has_many :hosts
    has_many :events, :through => :hosts

    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }

    def email_activate
        self.email_confirmed = true
        self.confirm_token = nil
        save!(:validate => false)
    end

    # Returns the hash digest of the given string.
    def User.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                BCrypt::Engine.cost
                BCrypt::Password.create(string, cost: cost)
    end

    private

    def confimation_token
        if self.confirm_token.blank?
          self.confirm_token = SecureRandom.urlsafe_base64.to_s
        end
      end
    
end
