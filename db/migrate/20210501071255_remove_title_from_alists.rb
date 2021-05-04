class RemoveTitleFromAlists < ActiveRecord::Migration[6.0]
  def change
    remove_column :Alists, :title, :string
  end
end
