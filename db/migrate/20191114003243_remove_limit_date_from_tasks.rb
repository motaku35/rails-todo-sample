class RemoveLimitDateFromTasks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :limit_date, :date
  end
end
