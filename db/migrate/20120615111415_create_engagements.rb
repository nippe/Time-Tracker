class CreateEngagements < ActiveRecord::Migration
  def change
    create_table :engagements do |t|
      t.string :name 
      t.integer :rate, :default => 1100
      t.integer :client_id, :null => false, :references => :clients

      t.timestamps
    end
  end
end
