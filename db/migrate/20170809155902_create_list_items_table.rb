class CreateListItemsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :list_items do |t|
      t.string :name
    end
  end
end
