class CreateYards < ActiveRecord::Migration
  def change
    create_table :yards do |t|
      t.belongs_to :user
      
      t.string :name
      t.string :slope
      t.string :soil
      t.string :grass
      t.string :sprinkler

      t.timestamps
    end

  end
end