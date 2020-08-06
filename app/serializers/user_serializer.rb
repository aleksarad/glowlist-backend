class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :facechart, :background_color, :looks
end
