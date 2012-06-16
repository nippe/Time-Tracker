class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.datetime :date
      t.string :description
      t.decimal :time_spent
      t.decimal :time_estimate
      t.text :comment
      t.integer :engagement_id, :null => false, :references => :engagements

      t.timestamps
    end
  end
end
