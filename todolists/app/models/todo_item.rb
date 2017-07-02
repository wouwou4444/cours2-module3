class TodoItem < ActiveRecord::Base
    def self.completedCount
        return TodoItem.all.where(completed: true).count
    end
end
