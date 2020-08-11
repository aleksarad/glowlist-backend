class LookSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :finished_look, :background_color, :background_image, :colors, :completed, :sketch, :user_id
end
