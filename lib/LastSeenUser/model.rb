require 'LastSeenUser/hook/LastSeen'

module Devise
  module Models
    module LastSeen
      def stamp!
        if self.last_seen.to_i < (Time.now - 5.minutes).to_i
          self.last_seen = DateTime.now
          self.save!
        end
      end
    end
  end
end