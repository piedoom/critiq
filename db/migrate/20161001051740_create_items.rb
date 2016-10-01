class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.integer :project_id
      t.timestamps
    end
    add_attachment :items, :image
  end
end
