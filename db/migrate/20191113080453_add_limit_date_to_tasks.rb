class AddLimitDateToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :limit_date, :date
  end
end
