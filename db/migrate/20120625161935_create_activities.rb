class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.bool :util
      t.decimal :hourly_rate
      t.text :description
      t.integer :engagement_id

      t.timestamps
    end
  end
end
