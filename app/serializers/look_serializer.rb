class LookSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :name, :description, :"", :completed, :sketch
end
