class AddForeignKeys < ActiveRecord::Migration[5.2]
  def change
  	remove_columns(:tests, :category_id)
    remove_columns(:questions, :test_id)
    remove_columns(:answers, :question_id)
    add_reference(:tests, :category_id, foreign_key: { to_table: :category })
    add_reference(:questions, :test_id, foreign_key: { to_table: :category })
    add_reference(:answers, :question_id, foreign_key: { to_table: :category })
  end
end
