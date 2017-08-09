class AddIsDoneToListItems < ActiveRecord::Migration[5.1]
  def change
    add_column :list_items, :is_done, :boolean, default: false
  end
end
