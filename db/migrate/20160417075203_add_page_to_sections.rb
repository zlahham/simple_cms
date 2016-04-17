class AddPageToSections < ActiveRecord::Migration
  def change
    add_reference :sections, :page, index: true, foreign_key: true
  end
end
