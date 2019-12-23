class AddImgToQues < ActiveRecord::Migration[6.0]
  def change
    add_column :ques, :img, :string
  end
end
