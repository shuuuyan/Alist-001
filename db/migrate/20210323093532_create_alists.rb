class CreateAlists < ActiveRecord::Migration[6.0]
  def change
    create_table :alists do |t|
      t.string :list1, null: false
      t.string :list2, null: false
      t.string :list3, null: false
      t.references :user, foreign_key: true
      
      t.timestamps
    end
  end
end
