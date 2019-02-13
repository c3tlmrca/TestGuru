class RenameForeignKeys < ActiveRecord::Migration[5.2]
  def change
  	rename_column(:tests, :category_id_id, :category_id)
    rename_column(:questions, :test_id_id, :test_id)
    rename_column(:answers, :question_id_id, :question_id)
  end
end
