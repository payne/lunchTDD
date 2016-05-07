class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :title
      t.text :description
      t.boolean :growing

      t.timestamps null: false
    end
  end
end