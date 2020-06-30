class GoalSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :category, :image_url, :completed
  has_many :todos
end
