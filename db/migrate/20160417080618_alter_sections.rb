class AlterSections < ActiveRecord::Migration
  def change
    change_column_default :sections, :visible, false
  end
end
