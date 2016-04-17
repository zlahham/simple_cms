class ChangeVisibleToFalse < ActiveRecord::Migration
  def up
    change_column_default :subjects, :visible, false
  end

  def down
    change_column_default :subjects, :visible, nil
  end
end
