class CreateQues < ActiveRecord::Migration[6.0]
  def change
    create_table :ques do |t|
      t.string :name
      t.string :email
      t.string :location

      t.timestamps
    end
  end
end
