class Goal < ApplicationRecord
    has_many: todos
    validates :title, presence: true
    validates :category, presence: true
    validates :category, inclusion: {in: ['Budget', 'Travel', 'Health', 'Mental Health', 'Spiritual'] }
end
