class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :persona_id
      t.integer :usertype_id
      t.text :photo
      t.integer :partner_id

      t.timestamps
    end
  end
end
