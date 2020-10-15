class User < ApplicationRecord
    def self.authenticate(uid, pass)
        if find_by(uid: uid)
            a = find_by(uid: uid).pass
            if BCrypt::Password.new(a) == pass
                return true
            end
        end
    end
    
    validates :uid, :pass, presence: true
end
