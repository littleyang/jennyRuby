class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :lastname
      t.string :firstname

      t.timestamps
    end
  end
end
