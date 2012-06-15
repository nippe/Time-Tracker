class CreateEngagements < ActiveRecord::Migration
  def change
    create_table :engagements do |t|
      t.string :name

      t.timestamps
    end
  end
end
