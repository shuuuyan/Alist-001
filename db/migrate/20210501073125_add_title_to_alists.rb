class AddTitleToAlists < ActiveRecord::Migration[6.0]
  def change
    add_column :alists, :title, :string
  end
end
