class AlterPages < ActiveRecord::Migration
  def change
    change_column_default :pages, :visible, false
  end
end
