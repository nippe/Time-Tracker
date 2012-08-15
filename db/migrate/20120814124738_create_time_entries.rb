class CreateTimeEntries < ActiveRecord::Migration
  def change
    create_table :time_entries do |t|
      t.datetime :activity_date
      t.string :description
      t.decimal :time_spent
      t.decimal :time_estimated
      t.boolean :util
      t.integer :client_id, :null => false, :references => :clients
      t.integer :engagement_id, :null => false, :references => :engagements
      t.integer :activity_id, :null => false, :references => :activities


      t.timestamps
    end
  end
end
