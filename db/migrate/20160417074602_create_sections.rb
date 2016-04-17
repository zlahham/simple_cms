class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.integer :position
      t.boolean :visible
      t.string :content_type
      t.text :content

      t.timestamps null: false
    end
  end
end
