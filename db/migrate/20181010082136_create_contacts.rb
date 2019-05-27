class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :last_name
      t.string :phone
      t.text :body
      t.integer :status, index: true, default: 0

      t.timestamps
    end
  end
end
