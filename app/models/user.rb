class User < ActiveRecord::Base
    def self.create_with_omniauth(auth)
      create! do |user|
        user.provider = auth["provider"]
        user.uid = auth["uid"]
        user.name = auth["info"]["name"]
    end
  end

  def small_image
    "http://graph.facebook.com/#{self.uid}/picture?type=small"
  end

  def normal_image
    "http://graph.facebook.com/#{self.uid}/picture?type=normal"
  end

end