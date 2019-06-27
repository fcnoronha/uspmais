class User < ApplicationRecord

    # Putting email in lowercasse
    attr_accessor :remember_token, :activation_token
    before_save   :downcase_email
    before_create :create_activation_digest

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

    # Returns the hash digest of the given string.
    def User.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                BCrypt::Engine.cost
                BCrypt::Password.create(string, cost: cost)
    end

    # Returns a random token.
    def User.new_token
        SecureRandom.urlsafe_base64
    end

    # Returns true if the given token matches the digest.
    def authenticated?(attribute, token)
        digest = send("#{attribute}_digest")
        return false if digest.nil?
        BCrypt::Password.new(digest).is_password?(token)
    end

    # Activates an account.
    def activate
        update_attribute(:activated,    true)
        update_attribute(:activated_at, Time.zone.now)
    end

    # Sends activation email.
    def send_activation_email
        UserMailer.account_activation(self).deliver_later
    end

    private

    # Converts email to all lower-case.
    def downcase_email
      self.email = email.downcase
    end

    # Creates and assigns the activation token and digest.
    def create_activation_digest
        self.activation_token  = User.new_token
        self.activation_digest = User.digest(activation_token)
    end
end
