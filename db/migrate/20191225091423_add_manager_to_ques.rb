class AddManagerToQues < ActiveRecord::Migration[6.0]
  def change
    add_reference :ques, :manager, null: false, foreign_key: true
  end
end
