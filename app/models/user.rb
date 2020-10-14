class User < ApplicationRecord
    def self.authenticate(uid, pass)
        find_by(uid: uid, pass: pass)
    end
end
