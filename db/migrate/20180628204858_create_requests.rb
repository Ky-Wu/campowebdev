class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.references :user, foreign_key: true
      t.string :organization
      t.string :description
      t.string :deadline
      t.string :contact
      t.boolean :approved
      t.string :developer_notes

      t.timestamps
    end
  end
end
