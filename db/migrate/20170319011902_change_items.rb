class ChangeItems < ActiveRecord::Migration[5.0]
  def change
    remove_column :items, :type_id, :integer
    add_column :items, :category_id, :integer

    create_table :categories do |t|
      t.string :title
      t.string :description
    end
  end
end
