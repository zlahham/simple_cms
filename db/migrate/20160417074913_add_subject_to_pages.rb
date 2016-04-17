class AddSubjectToPages < ActiveRecord::Migration
  def change
    add_reference :pages, :subject, index: true, foreign_key: true
  end
end
