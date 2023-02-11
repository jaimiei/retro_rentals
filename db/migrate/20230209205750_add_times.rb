class AddTimes < ActiveRecord::Migration[7.0]
  def change
    add_column :requests, :start_date, :date
    add_column :requests, :end_date, :date
  end
end
