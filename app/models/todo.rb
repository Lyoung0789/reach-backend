class Todo < ApplicationRecord
    belongs_to :goal
    validates :title, presence: true
end
