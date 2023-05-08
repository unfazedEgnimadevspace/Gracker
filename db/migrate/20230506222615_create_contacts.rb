class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :email
      t.string :subject
      t.text :message

      t.timestamps
    end
  end
end
