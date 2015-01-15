class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name, null: false
      t.integer :user_id, null: false
      t.integer :original_file_id

      t.timestamps
    end

    add_index :documents, :user_id
    add_index :documents, :original_file_id
  end
end
